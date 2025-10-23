import 'package:flutter/material.dart';
import 'components/tab_switcher.dart';
import 'installed_apps_page.dart';
import 'policies.dart';

class ModuleX extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(child: Text('Module X'));
}

class ModuleY extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(child: Text('Module Y'));
}

final switcherModule = TabSwitcher(
      tabTitles: ['Installed apps', 'Policies'],
      tabViews: [InstalledAppsPage(), PoliciesPage()],
      navHeader: "Wellbeing",
    );