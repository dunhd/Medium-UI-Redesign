import 'package:flutter/material.dart';
import 'package:medium_app/screens/home_screen.dart';

void main() => runApp(MediumApp());

class MediumApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medium Concept',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.grey[200],
        ),
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: HomeScreen(),
    );
  }
}
