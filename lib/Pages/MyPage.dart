import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  State<MyPage> createState() {
    return _MyPageState();
  }
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("My"),
      ),
    );
  }
}
