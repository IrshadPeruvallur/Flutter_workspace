import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class s2 extends StatelessWidget {
   s2({super.key});
  final _textcontroller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
          controller: _textcontroller,
          
        ),
      ),
    );
  }
}