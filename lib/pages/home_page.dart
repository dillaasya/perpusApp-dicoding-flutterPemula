import 'package:flutter/material.dart';
import 'package:perpus/pages/list_page.dart';
import 'package:perpus/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _navbarOption = <Widget>[
    const ListPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navbarOption[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Preferences',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        //backgroundColor: Colors.white,
        selectedItemColor: const Color(0xffFAB045),

      ),
    );
  }
}
