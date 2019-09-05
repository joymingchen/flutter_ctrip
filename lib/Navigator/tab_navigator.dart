import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/HomePage.dart';
import 'package:flutter_app/Pages/MyPage.dart';
import 'package:flutter_app/Pages/SearchPage.dart';
import 'package:flutter_app/Pages/TravelPage.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() {
    return _TabNavigatorState();
  }
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;

  int _currentIndex = 0;

  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[HomePage(), SearchPage(), TravelPage(), MyPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _defaultColor,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                    color: _currentIndex == 0 ? _activeColor : _defaultColor),
              ),
              activeIcon: Icon(
                Icons.home,
                color: _activeColor,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _defaultColor,
              ),
              title: Text(
                "Search",
                style: TextStyle(
                    color: _currentIndex == 1 ? _activeColor : _defaultColor),
              ),
              activeIcon: Icon(
                Icons.search,
                color: _activeColor,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_travel,
                color: _defaultColor,
              ),
              title: Text(
                "Travel",
                style: TextStyle(
                    color: _currentIndex == 2 ? _activeColor : _defaultColor),
              ),
              activeIcon: Icon(
                Icons.card_travel,
                color: _activeColor,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: _defaultColor,
              ),
              title: Text(
                "My",
                style: TextStyle(
                    color: _currentIndex == 3 ? _activeColor : _defaultColor),
              ),
              activeIcon: Icon(
                Icons.account_circle,
                color: _activeColor,
              )),
        ],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
