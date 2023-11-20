import 'package:ease_booking_app/constant/colors.dart';
import 'package:ease_booking_app/screen/chat/chat_page.dart';
import 'package:ease_booking_app/screen/main/home_page.dart';
import 'package:ease_booking_app/screen/main/order_page.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int _selectedIndex = 0;
  final _pageController = PageController();
  
  void _onItemTapped(int index) {
    _pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      children: <Widget>[
        homePageScreen(),
        orderScreen(),
        chatScreen(),
      ],
    ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(0, 126, 167, 1),
          selectedItemColor: tdBlack,
          unselectedItemColor: tdWhite,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 40,),
              label: '',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.chrome_reader_mode, size: 40,), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.chat, size: 40,), label: '')
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
    );
  }
}