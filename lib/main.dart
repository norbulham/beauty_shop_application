import 'package:beauty_shop_application/button.nav.dart';
import 'package:beauty_shop_application/pages/aroma_page.dart';
import 'package:beauty_shop_application/pages/cart_page.dart';
import 'package:beauty_shop_application/pages/favorite_category.dart';
import 'package:beauty_shop_application/home_pages.dart';
import 'package:beauty_shop_application/pages/hello_pages.dart';
import 'package:beauty_shop_application/pages/last_pages.dart';
import 'package:beauty_shop_application/pages/payment_page.dart';
import 'package:beauty_shop_application/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

