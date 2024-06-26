import 'package:flutter/material.dart';
import 'package:photogallery/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(44, 171, 0, 1),
          centerTitle: true,
          foregroundColor: Colors.white,

        ),
      ),
    );
  }
}
