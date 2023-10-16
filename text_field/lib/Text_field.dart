import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatefulWidget {
   MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final _textcontroller=TextEditingController();

  String _textdisplay="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          
          children: [
            TextField(
              controller:_textcontroller ,
                decoration: InputDecoration(
                border:OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              setState(() {
                _textdisplay=_textcontroller.text;
              });
            }, child:Text("Click here"),
            
            ),
            Text("Input Text:$_textdisplay")
          ],
        ),
      ),
    );
  }
}