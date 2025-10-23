import 'package:flutter/material.dart';

class TabSwitcher extends StatelessWidget {
  final List<String> tabTitles;
  final List<Widget> tabViews;
  final String navHeader;

  const TabSwitcher({
    Key? key,
    required this.tabTitles,
    required this.tabViews,
    required this.navHeader,
  })  : assert(tabTitles.length == tabViews.length,
  'tabTitles and tabViews must have the same length'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabTitles.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(navHeader),
          bottom: TabBar(
            tabs: tabTitles.map((title) => Tab(text: title)).toList(),
          ),
        ),
        body: TabBarView(
          children: tabViews,
        ),
      ),
    );
  }
}