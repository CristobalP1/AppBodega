import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/create_category.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
/*         debugShowCheckedModeBanner: false, home: HomeScreen()); */
  }
}
