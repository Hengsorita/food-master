import 'package:flutter/material.dart';
import 'package:project/Cartpage/add_cart.dart';
import 'package:project/Cartpage/cartpage_screen.dart';
import 'package:project/Homepage/homepage_screen.dart';
import 'package:project/Product/product_screen.dart';
import 'package:project/Profile/profile_screen.dart';
import 'package:project/Search/search_screen.dart';
import 'package:project/notification.dart/notification_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    // Text('Index 1: Search'),
    cartscreen(),
    Addcart(),

    notification(),
    Profilescreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  void pageChanged(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageView(),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildBottomNavigation() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      child: BottomNavigationBar(
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildPageView() {
    return PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          pageChanged(index);
        },
        children: _widgetOptions);
  }
}
