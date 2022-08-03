import 'package:flutter/material.dart';
import 'package:insta_clone/pages/account.dart';
import 'package:insta_clone/pages/home.dart';
import 'package:insta_clone/pages/reel.dart';
import 'package:insta_clone/pages/search.dart';
import 'package:insta_clone/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // navigate around the bottom bar
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // body for each page
  final List<Widget> _childern = [
    UserHome(),
    UserSearch(),
    UserReel(),
    UserShop(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _childern[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'Reel'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          ]),
    );
    ;
  }
}
