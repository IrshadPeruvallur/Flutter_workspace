import 'package:flutter/material.dart';
import 'screens/s3.dart';
import 'screens/s1.dart';
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