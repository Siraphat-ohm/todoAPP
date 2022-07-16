import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:todo/pages/calendart_page.dart';
import 'package:todo/pages/notfication_page.dart';
import 'package:todo/pages/task_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0 ;
  List tabs = [TaskPage(),CalendarPage(),NotificatoinPage()];

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "task"),
                BottomNavigationBarItem(icon: Icon(Icons.task_alt_rounded), label: "calendar"),
                BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "noti"),
              ],
              onTap: (index){
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          body: tabs[_currentIndex], 
          ),
        );
      },
    );
  }
}
