import 'package:flutter/material.dart';
import '/widgets/custom_button.dart';
import '/assets/styles.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  var msg = "hello world";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              msg,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: AppStyles.primaryColor,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => {
                    setState(() => {
                          msg = "You Click Me",
                        }),
                  },
                  child: Text(
                    "Click ME",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/detail", arguments: "hello");
                  },
                  child: Text("Detail Page"),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, "/flex_page"),
                  },
                  child: Text("Flex Page"),
                ),
                SizedBox(width: 20),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
                SizedBox(width: 20),
                CustomButton(
                  title: "Custom Button",
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            // 创建一个正方形并且设置宽高为100文本为"Hello World"的文本
            Container(
              color: Colors.blue,
              // width: 200,
              // height: 200,
              // alignment: Alignment.center,
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(left: 150, top: 0, right: 0, bottom: 0),
              transform: Matrix4.rotationZ(0.5),
              child: Text(
                "Hello Container",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            // Image.network(
            //   "https://i.ibb.co/P4zpptx/1648803642976-981.jpg",
            // ),
            Row(
              children: [
                Image.asset(
                  "assets/images/default.jpg",
                  width: 200,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/default.jpg",
                width: 200,
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/default.jpg",
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Image.asset("assets/images/logo.png", width: 50.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
