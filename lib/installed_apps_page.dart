import 'package:flutter/material.dart';
import 'app_manager.dart'; // Adjust path as needed

class InstalledAppsPage extends StatefulWidget {
  @override
  _InstalledAppsPageState createState() => _InstalledAppsPageState();
}

class _InstalledAppsPageState extends State<InstalledAppsPage> {
  List<App> _apps = [];

  @override
  void initState() {
    super.initState();
    fetchApps();
  }

  void fetchApps() async {
    List<App> apps = await AppManager.getInstalledApps();
    setState(() {
      _apps = apps;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Installed Apps')),
      body: _apps.isEmpty
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: _apps.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      // Handle your click action here
                      print('Tapped on ${_apps[index].name}');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.memory(_apps[index].icon, width: 48, height: 48),
                          SizedBox(height: 8),
                          Text(
                            _apps[index].name,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
