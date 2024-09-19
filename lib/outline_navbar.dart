import 'package:flutter/material.dart';
import 'package:flutter_ass_3/pages/home_page.dart';
import 'package:flutter_ass_3/pages/profile_page.dart';
import 'package:flutter_ass_3/pages/search_page.dart';

class OutlineNavbar extends StatefulWidget {
  const OutlineNavbar({super.key});

  @override
  State<OutlineNavbar> createState() => _OutlineNavbarState();
}

class _OutlineNavbarState extends State<OutlineNavbar> {
  int _selected_index = 0;
  final _pages = [HomePage(), SearchPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              'Creative App',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: _pages[_selected_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected_index,
        selectedItemColor: Colors.purpleAccent,
        onTap: (index) {
          setState(() {
            _selected_index = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
