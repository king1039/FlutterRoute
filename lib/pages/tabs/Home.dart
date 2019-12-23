import 'package:flutter/material.dart';
import '../Search.dart';

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
          height: 20,
        ),
        RaisedButton(
          child: Text("跳转到商品页面"),
          onPressed: () {
            Navigator.pushNamed(context, '/product');
          },
        ),
      ],
    );
  }
}
