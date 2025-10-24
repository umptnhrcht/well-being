import 'package:demo_flutter/models/restriction_rule.dart';
import 'package:isar_plus/isar_plus.dart';

part 'app_restriction.g.dart';

@collection
class AppRestriction {

  @Id()
  int id = 0;

  /// Device identifier (e.g., Android ID or custom UUID)
  late String deviceId;

  /// App package name, e.g. "com.example.myapp"
  late String packageName;

  /// Embedded list of restrictions for this app
  late List<RestrictionRule> restrictions;
}
