import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  MinePage({Key key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到buttons页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/button');
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("跳转到表单页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/textField');
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("跳转到多选框页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/checkBox');
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("单选页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/radio');
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("提交页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/formDemo');
          },
        ),
      ],
    );
  }
}
