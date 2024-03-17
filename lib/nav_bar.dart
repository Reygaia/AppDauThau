import 'package:flutter/material.dart';

class NavBarBottom extends StatefulWidget {
  final void Function(String page) setPage;
  const NavBarBottom({super.key, required this.setPage});

  @override
  State<NavBarBottom> createState() => _NavBarBottomState();
}

class _NavBarBottomState extends State<NavBarBottom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: _BottomAppBar(
          setPage: widget.setPage,
        ),
      ),
    );
  }
}

class _BottomAppBar extends StatelessWidget {
  final void Function(String page) setPage;
  const _BottomAppBar({required this.setPage});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            //Home
            IconButton(
              color: Colors.blue,
              tooltip: 'Home',
              onPressed: () {
                setPage('home');
              },
              icon: const Icon(Icons.home),
            ),
            const Spacer(),
            //char
            IconButton(
              color: Colors.blue,
              onPressed: () {
                setPage('chat');
              },
              icon: const Icon(Icons.chat),
            ),
            const Spacer(),
            //Orders
            IconButton(
              color: Colors.blue,
              onPressed: () {
                setPage('order');
              },
              icon: const Icon(Icons.menu),
            ),
            const Spacer(),
            //Profile
            IconButton(
              color: Colors.blue,
              onPressed: () {
                setPage('account');
              },
              icon: const Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
    );
  }
}
