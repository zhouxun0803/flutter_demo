import 'package:flutter/material.dart';

class FlexPage extends StatefulWidget {
  @override
  FlexPageState createState() => FlexPageState();
}

class FlexPageState extends State<FlexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlexPage"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Flex(
        direction: Axis.horizontal,
        children: [
          Container(
            width: 30,
            height: 100,
            color: Colors.blue,
            child: Text("left"),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.red,
              child: Text("center"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.green,
              child: Center(
                child: Text("right"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
