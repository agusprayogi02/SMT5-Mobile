import 'package:belanja/pages/detail_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/item_page.dart';
import 'pages/shopping_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigasi Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => HomePage(),
        '/shopping': (_) => ShoppingPage(),
        '/item': (_) => const ItemPage(),
        '/detail': (_) => const DetailPage(),
      },
    );
  }
}
