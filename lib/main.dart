import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home.dart';
import 'pages/message.dart';
import 'pages/cart.dart';
import 'pages/person.dart';
import 'pages/detail.dart';
import 'pages/flex_page.dart';
import 'assets/styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '掌赋',
      theme: ThemeData(
        primaryColor: AppStyles.primaryColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: AppStyles.primaryColor,
            onPrimary: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
          color: AppStyles.primaryColor,
        ),
      ),
      routes: {
        "/detail": (context) => Detail(),
        "/flex_page": (context) => FlexPage(),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;
  // 动态AppBar中的title
  String _title = "首页";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
        backgroundColor: AppStyles.primaryColor,
        // title字体颜色
        foregroundColor: Colors.white,
      ),
      body: [Home(), Message(), Cart(), Person()][_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) => {
          setState(() {
            _currentIndex = value;
            _title = ["首页", "消息", "购物车", "个人中心"][value];
          })
        },
        type: BottomNavigationBarType.fixed, // 禁用切换动画
        selectedItemColor: AppStyles.primaryColor, // 设置选中项的图标和文字颜色
        unselectedItemColor: AppStyles.color3, // 设置未选中项的图标和文字颜色
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "消息",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '购物车',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '个人中心',
          ),
        ],
      ),
    );
  }
}
