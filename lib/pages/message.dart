import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  MessageState createState() => MessageState();
}

class MessageState extends State<Message> {
  final dio = Dio();
  var data = [];
  @override
  void initState() {
    super.initState();
    // 在页面初始化时发起网络请求
    getHttp();
  }

  void getHttp() async {
    Response response = await dio
        .get('https://api.oioweb.cn/api/search/FoodHeat?keyword=香蕉&page=1');
    setState(() {
      data = response.data["result"];
    });
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          // 获取 name 和 desc 属性
          String name = data[index]["name"] ?? "xxx";
          String heat = data[index]["heat"] ?? "暂无热量";
          String desc = data[index]["desc"] ?? "暂无描述";
          return ListTile(
            // 渲染图片
            leading: Image.network(
              data[index]["img"],
              width: 50,
              height: 50,
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
            ),
            title: Text(name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(heat),
                Text(desc, style: TextStyle(color: const Color.fromARGB(255, 161, 152, 151))),
              ],
            ),
            // 点击事件
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: name);
            },
          );
        },
      ),
    );
  }
}
