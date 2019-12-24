import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Tabs(),
      theme: ThemeData(primaryColor: Colors.blue),
      //命名路由统一管理
      // routes: {
      //   '/form': (context) => FormPage(),
      //   '/search': (context) => SearchPage(),
      // },
      debugShowCheckedModeBanner: false, //去掉debug图标
      initialRoute: '/', //初始化的时候加载路由
      onGenerateRoute: onGenerateRoutes,
    );
  }
}
