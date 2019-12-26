import 'package:flutter/material.dart';
import '../../components/MyDialog.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索页面"),
          onPressed: () {
            //普通路由的写法
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (Context) => SearchPage()));
            //命名路由的写法
            Navigator.pushNamed(context, '/search', arguments: {
              "id": 123,
            });
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("跳转到商品页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/product');
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("跳转到AppBar"),
          onPressed: () {
            Navigator.pushNamed(context, '/appBarDemo');
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("跳转到TabController自定义顶部切换"),
          onPressed: () {
            Navigator.pushNamed(context, '/tabBarController');
          },
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("跳转到对话框页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/dialog');
          },
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("自定义对话框页面"),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return MyDialog(
                    title: "关于我们",
                    content: "这是内容",
                  );
                });
          },
        ),
      ],
    );
  }
}
