import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  @override
  PersonState createState() => PersonState();
}

class PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Person"),
        ],
      ),
    );
  }
}
