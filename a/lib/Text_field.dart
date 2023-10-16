import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border:OutlineInputBorder()
            ),
          ),
          ElevatedButton(onPressed: (){}, child:Text("Click here"))
        ],
      ),
    );
  }
}