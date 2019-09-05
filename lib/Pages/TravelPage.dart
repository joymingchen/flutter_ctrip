import 'package:flutter/material.dart';

class TravelPage extends StatefulWidget {
  @override
  State<TravelPage> createState() {
    return _TravelPageState();
  }
}

class _TravelPageState extends State<TravelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("Travel"),
      ),
    );
  }
}
