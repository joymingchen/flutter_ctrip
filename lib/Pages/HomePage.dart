import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List _imgUrls = [
    "https://img2.mukewang.com/szimg/5c18d2d8000141c506000338.jpg",
    "https://img4.mukewang.com/szimg/5d4ceaef09c3cb6612000676.png",
    "https://img2.mukewang.com/szimg/5ce7e7970894f48706000338.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
          Container(
          height: 160,
          child: Swiper(
              itemCount: _imgUrls.length,
              autoplay: true,
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  _imgUrls[index],
                  fit: BoxFit.fill,
                );
              },
              pagination: SwiperPagination(),
        ),
      )
      ],
    ),)
    ,
    );
  }
}
