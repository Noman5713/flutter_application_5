import 'package:flutter/material.dart';

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  int currentIndex = 0;
  final List<Widget> pages = [
    Text(
      "Home",
      style: TextStyle(fontSize: 50),
    ),
    Text(
      "Profile",
      style: TextStyle(fontSize: 50),
    ),
  ];
  void onClickMenu(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onClickMenu,
        currentIndex: currentIndex,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.linked_camera), label: "Camera"),
        BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: "Alarm"),
      ]),
    );
  }
}
