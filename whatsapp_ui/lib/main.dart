import 'package:flutter/material.dart';
import 'screens/chat.dart';
import 'screens/splash.dart';
import 'screens/contact.dart';
void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:s1() ,
    );
  }
}