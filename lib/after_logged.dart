import 'package:examui/class/most_inter_in.dart';
import 'package:examui/class/most_interested.dart';
import 'package:examui/class/popular.dart';
import 'package:examui/models/product.dart';
import 'package:examui/pages/cards.dart';
import 'package:examui/pages/favoruits.dart';
import 'package:examui/pages/hompage.dart';
import 'package:examui/pages/profile.dart';
import 'package:flutter/material.dart';

class AfterLogged extends StatefulWidget {
  @override
  State<AfterLogged> createState() => _AfterLoggedState();
}

class _AfterLoggedState extends State<AfterLogged> {
  int selectedIndex = 0;
  List<Widget?> pages = [Hompage(), Favourite(), Cards(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
        
          selectedIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.grey),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
        // currentIndex: selectedIndex,
        // onTap: onItemTapped,
      ),
    );
  }
}
