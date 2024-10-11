import 'package:fiverr_app/pages/analytics_page.dart';
import 'package:fiverr_app/pages/home_page.dart';
import 'package:fiverr_app/pages/messege_page.dart';
import 'package:fiverr_app/pages/profile_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  final Screens = [
    const HomePage(),
    const MessegePage(),
    const AnalyticsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[index],

      //BUTTOM NAVIGATION BAR
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 25,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 20,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: const Color.fromARGB(255, 45, 141, 48),
          currentIndex: index,
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message_outlined,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.analytics_outlined,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                label: ''),
          ]),
    );
  }
}
