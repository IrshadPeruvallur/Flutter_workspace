import 'package:flutter/material.dart';
import 'Text_field.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyWidget() ,
    );
  }
}