import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:grocery_app/ProfileScreen.dart';
import 'package:grocery_app/StoreScreen.dart';
import 'package:grocery_app/SearchScreen.dart';


class GroceryMainPage extends StatefulWidget {
  @override
  _GroceryMainPageState createState() => _GroceryMainPageState();
}

class _GroceryMainPageState extends State<GroceryMainPage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [Homescreen(), SearchScreen(), Profilescreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 20, color: Color(0xff60B5FF), spreadRadius: 3,  blurStyle: BlurStyle.inner)],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: GNav(
          gap: 8,
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade900,
          color: Colors.black87,
          tabs: const [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: CupertinoIcons.search, text: 'Search'),
            GButton(icon: Icons.person, text: 'Profile'),
          ],
        ),
      ),
    );
  }
}
