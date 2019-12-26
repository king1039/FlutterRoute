import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/Tabs2.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/User.dart';
import '../pages/Button.dart';
import '../pages/TextField.dart';
import '../pages/CheckBox.dart';
import '../pages/Radio.dart';
import '../pages/FormDemo.dart';
import '../pages/Date.dart';
import '../pages/DatePub.dart';
import '../pages/Swiper.dart';
import '../pages/Dialog.dart';

//配置路由
final routes = {
  '/': (context, {arguments}) => Tabs(),
  // '/': (context, {arguments}) => Tabs2(),
  '/form': (context) => FormPage(),
  '/product': (context) => ProductPage(),
  '/productInfo': (context, {arguments}) =>
      ProductInfoPage(arguments: arguments),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  '/appBarDemo': (context) => AppBarDemoPage(),
  '/tabBarController': (context) => TabBarControllerPage(),
  '/user': (context) => UserPage(),
  '/button': (context) => ButtonPage(),
  '/textField': (context) => TextFieldPage(),
  '/checkBox': (context) => CheckBoxPage(),
  '/radio': (context) => RadioPage(),
  '/formDemo': (context) => FormDemoPage(),
  '/date': (context) => DatePage(),
  '/datePub': (context) => DatePubPage(),
  '/swiper': (context) => SwiperPage(),
  '/dialog': (context) => DialogPage(),
};

//固定写法
//参考https://flutter.dev/docs/cookbook/navigation/navigate-with-arguments
var onGenerateRoutes = (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
