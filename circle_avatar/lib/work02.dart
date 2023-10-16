import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: ListView.builder(
      itemCount: 10, // Replace with your desired item count
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 30, // Adjust the size as needed
            backgroundImage: AssetImage('assets/avatar.png'), // Provide your image asset here
          ),
          title: Text('Item $index'),
          subtitle: Text('Subtitle $index'),
        );
      },
    )
    );
  }
}