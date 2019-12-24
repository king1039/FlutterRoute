import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarDemoPage"),
          // backgroundColor: Colors.red,
          centerTitle: true,
          //左侧页面
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     print('menu');
          //   },
          // ),
          //右侧图标
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.search),
          //     onPressed: () {
          //       print('search');
          //     },
          //   ),
          //   IconButton(
          //     icon: Icon(Icons.settings),
          //     onPressed: () {
          //       print('settings');
          //     },
          //   ),
          // ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "热门"),
              Tab(text: "推荐"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一个tab"),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第二个tab"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
