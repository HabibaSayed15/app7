import 'package:flutter/material.dart';
import 'package:flutter1/color.dart';
import 'package:flutter1/news.dart';
import 'package:flutter1/notifications.dart';
import 'package:flutter1/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;
  List<Widget> screen = [
    const News(),
    const Search(),
    const Notifications(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: screen[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
          backgroundColor: Appco.background,
          selectedItemColor: Appco.lamon,
          unselectedItemColor: Appco.text,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                activeIcon: Icon(Icons.home)),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "search",
                activeIcon: Icon(Icons.search)),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: "notifications",
                activeIcon: Icon(Icons.notifications))
          ]),
    ));
  }
}
