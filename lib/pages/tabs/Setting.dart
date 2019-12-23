import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("我是设置1"),
        ),
        ListTile(
          title: Text("我是设置2"),
        ),
        ListTile(
          title: Text("我是设置3"),
        ),
        ListTile(
          title: Text("我是设置4"),
        ),
      ],
    );
  }
}
