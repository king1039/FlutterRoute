import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.red,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(text: "热销"),
                    Tab(text: "推荐"),
                    Tab(text: "社群"),
                    Tab(text: "推广"),
                    Tab(text: "新闻"),
                    Tab(text: "热点"),
                    Tab(text: "淘宝"),
                    Tab(text: "知乎"),
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("跳转到表单页面并传值"),
                  onPressed: () {
                    //普通路由的写法
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => FormPage(title: "我是跳转传值",)));
                    //命名路由的写法
                    Navigator.pushNamed(context, '/form');
                  },
                  color: Theme.of(context).accentColor,
                  textTheme: ButtonTextTheme.primary,
                ),
              ],
            ),
            Text("第三个tab"),
            Text("第四个tab"),
            Text("第五个tab"),
            Text("第六个tab"),
            Text("第七个tab"),
            Text("第八个tab"),
            Text("第九个tab"),
          ],
        ),
      ),
    );
  }
}