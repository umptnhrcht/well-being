package com.example.demo_flutter;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "com.example.app/packagemanager";
    private static final String PACKAGE_NAME = "com.example.demo_flutter";

    private static final Set<String> deniedPackages = new HashSet<>(Arrays.asList(
            "com.android.systemui",
            "com.google.android.gms",
            "com.google.android.gms.safetynet",
            "com.google.android.gms.keyverifier",
            "com.android.permissioncontroller",
            "com.google.android.permissioncontroller",
            "com.android.providers.downloads.ui",
            "com.android.shell",
            PACKAGE_NAME
    ));

    private static final Set<String> deniedAppNames = new HashSet<>(Arrays.asList(
            "Android System", "Safety Core", "Key Verifier"
    ));

    private static final String TAG = "MainActivity";

    @Override
    public void configureFlutterEngine(FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);

        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler(
                        (call, result) -> {
                            if (call.method.equals("getInstalledApps")) {
                                List<Map<String, Object>> apps = new ArrayList<>();
                                PackageManager pm = getPackageManager();
                                List<ApplicationInfo> packages = pm.getInstalledApplications(PackageManager.GET_META_DATA);

                                for (ApplicationInfo appInfo : packages) {
                                    boolean isSystemApp = (appInfo.flags & ApplicationInfo.FLAG_SYSTEM) != 0
                                            || (appInfo.flags & ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0;
                                    boolean isFromSystemPartition = appInfo.sourceDir != null &&
                                            (appInfo.sourceDir.startsWith("/system")
                                                    || appInfo.sourceDir.startsWith("/vendor")
                                                    || appInfo.sourceDir.startsWith("/product")
                                                    || appInfo.sourceDir.startsWith("/odm"));
                                    boolean isInDenylist = deniedPackages.contains(appInfo.packageName);
                                    Intent launchIntent = pm.getLaunchIntentForPackage(appInfo.packageName);
                                    boolean isLaunchable = launchIntent != null;

                                    if (!isSystemApp
                                            && !isFromSystemPartition
                                            && !isInDenylist
                                            && isLaunchable
                                            && appInfo.enabled) {
                                        try {
                                            String appName = pm.getApplicationLabel(appInfo).toString();
                                            Drawable icon = pm.getApplicationIcon(appInfo);

                                            Bitmap bitmap;
                                            if (icon instanceof BitmapDrawable) {
                                                bitmap = ((BitmapDrawable) icon).getBitmap();
                                            } else {
                                                bitmap = Bitmap.createBitmap(icon.getIntrinsicWidth(), icon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                                                Canvas canvas = new Canvas(bitmap);
                                                icon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                                                icon.draw(canvas);
                                            }

                                            ByteArrayOutputStream stream = new ByteArrayOutputStream();
                                            bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream);
                                            byte[] iconByteArray = stream.toByteArray();

                                            Map<String, Object> appDetails = new HashMap<>();
                                            appDetails.put("name", appName);
                                            appDetails.put("icon", iconByteArray);
                                            apps.add(appDetails);

                                            Log.d(TAG, "Found app: " + appName + " - Package: " + appInfo.packageName);
                                        } catch (Exception e) {
                                            Log.e(TAG, "Error processing application: " + appInfo.packageName, e);
                                        }
                                    }
                                }
                                result.success(apps);
                            } else {
                                result.notImplemented();
                            }
                        }
                );
    }
}
