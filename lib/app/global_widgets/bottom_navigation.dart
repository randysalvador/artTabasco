import 'package:artabasco/app/modules/home/home_view.dart';
import 'package:artabasco/app/modules/login/login_view.dart';

import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigation createState() => _BottomNavigation();
}

class _BottomNavigation extends State<BottomNavigation> {
  int _selectedIndex = 0;
  List<Widget> routesDataNavigationBar = [
    HomeView(),
    LoginView(),
    LoginView(),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      fixedColor: Colors.purple[100],
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Colors.purple),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Login',
            backgroundColor: Colors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Suvernirs',
            backgroundColor: Colors.white),
      ],
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
