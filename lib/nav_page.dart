import 'package:appbanhang/MainPages/ChatWidgets/chat_page.dart';
import 'package:appbanhang/MainPages/HomeWidges/home_page.dart';
import 'package:appbanhang/MainPages/OrderWidgets/orders_page.dart';
import 'package:appbanhang/MainPages/ProfileWidgets/profile_page.dart';
import 'package:flutter/material.dart';

class NavBarMain extends StatefulWidget {
  const NavBarMain({super.key});

  @override
  State<NavBarMain> createState() => _NavBarMainState();
}

class _NavBarMainState extends State<NavBarMain> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    //Home page
    HomePage(),
    //Chat page
    ChatPage(),
    //Order page
    OrderPage(),
    //Account
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Order',
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
              backgroundColor: Colors.orangeAccent),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
