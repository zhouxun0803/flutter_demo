import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';

final dio = Dio();

void getHttp() async {
  final response = await dio.get('https://api.vvhan.com/api/weather');
  print(response);
}

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("消息"),
          ElevatedButton(
            onPressed: getHttp,
            child: Text("获取数据"),
          )
        ],
      ),
    );
  }
}
