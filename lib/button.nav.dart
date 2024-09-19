import 'package:beauty_shop_application/pages/cart_page.dart';
import 'package:beauty_shop_application/pages/favorite_category.dart';
import 'package:beauty_shop_application/pages/hello_pages.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class PracticeBottomNavBar extends StatefulWidget {
  const PracticeBottomNavBar({super.key});

  @override
  State<PracticeBottomNavBar> createState() => _PracticeBottomNavBarState();
}

class _PracticeBottomNavBarState extends State<PracticeBottomNavBar> {
  List list = [
    FavoriteCategory(),
    CartPage(),
    HelloPages(),
  ];

  List<Icon> allItems = [
    Icon(Icons.home_outlined,color: Colors.white,),
    Icon(Icons.shopping_cart_outlined,color: Colors.white,),
    Icon(Icons.favorite,color: Colors.white,),
    Icon(Icons.wechat,color: Colors.white,size: 30),
    Icon(Icons.opacity_rounded,color: Colors.white,size: 30),
  ];


  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xffdee2e6),
        color:Color(0xff3c6e71),

        buttonBackgroundColor:Color(0xff3c6e71),
        index: _currentIndex,
        onTap: (int index){
          _currentIndex = index;
          setState(() {
          });
        },
        items: allItems,
      ),
    );  }
}



