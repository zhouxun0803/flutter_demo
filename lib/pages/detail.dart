import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  DetailState createState() => DetailState();
}

class DetailState extends State<Detail> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    //获取路由传参
    var args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('详情'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text("详情" + args.toString()),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "返回",
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: AnimatedScale(
              scale: _visible ? 1 : 0.5,
              duration: Duration(milliseconds: 1000),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/default.jpg",
                  ),
                  Positioned(
                      top: 10,
                      right: 10,
                      child:
                          Image.asset("assets/images/logo.png", width: 50.0)),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          AnimatedOpacity(
            opacity: _visible ? 1 : 0,
            duration: Duration(milliseconds: 1000),
            child: Image.asset("assets/images/logo.png"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => {
              setState(() => {
                    _visible = !_visible,
                  }),
            },
            child: Text("切换"),
          ),
        ],
      ),
    );
  }
  void dispose() {
    super.dispose();
  }
}
