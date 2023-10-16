import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          title: Text('Scrollable Row Example'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical, // Set the scroll direction to horizontal
          child: Column(
            children: <Widget>[
              Container(width: 500, height: 500, color: Colors.red),
              Container(width: 500, height: 500, color: Colors.green),
              Container(width: 500, height: 500, color: Colors.blue),
            ],
          ),
          
        ),
      );
    
  }
}