import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

import '../components/custom_drawer.dart';
import 'date_secreen.dart';
import 'family_secreen.dart';
import 'health_secreen.dart';
import 'my_health_secreen.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'الصفحة الرئيسية',
          style: TextStyle(
              letterSpacing: 3,
              color: Colors.blue,
              fontSize: 33,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.blue[100],
          ),
        ],
      ),
      drawer: CustomDrawer(),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue,
        backgroundColor: Colors.white,
        height: 65,
        animationDuration: Duration(
          microseconds: 200,
        ),
        items: [
          CurvedNavigationBarItem(
            child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => my_health_secreen(),
                      ));
                },
                icon: Icon(Icons.monitor_heart_rounded,
                    size: 30, color: Colors.white)),
            label: 'صحتي',
          ),
          CurvedNavigationBarItem(
            child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => family_secreen(),
                      ));
                },
                icon:
                    Icon(Icons.family_restroom, size: 30, color: Colors.white)),
            label: 'عائلتي',
          ),
          CurvedNavigationBarItem(
            child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => health_secreen(),
                      ));
                },
                icon: Icon(Icons.health_and_safety_outlined,
                    size: 30, color: Colors.white)),
            label: 'جودة الصحة',
          ),
          CurvedNavigationBarItem(
            child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => date_secreen(),
                      ));
                },
                icon: Icon(Icons.date_range, size: 30, color: Colors.white)),
            label: 'المواعيد',
          ),
          CurvedNavigationBarItem(
            child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => home_screen(),
                      ));
                },
                icon: Icon(Icons.home, size: 30, color: Colors.white)),
            label: 'الرئيسية',
          ),
        ],
      ),
    );
  }
}
