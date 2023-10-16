import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class s1 extends StatelessWidget {
  const s1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text("Text"),
          subtitle:Text("subtitle") ,
          leading: CircleAvatar(
            radius: 25,
          ),
        ),
        itemCount:5 ,
        separatorBuilder: (context, index) => Divider(),)
        ),
    );
  }
}