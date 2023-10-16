import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            InkWell(
              
              onTap: () {
                _countFunction();
              },
              child: Container(
                color: Color.fromARGB(255, 0, 16, 19),
                width: 200,
                height: 200,
                child: Center(
                  child: Text(
                    "Tap Me",
                    style: TextStyle(color: Colors.white),
                    
                  ),
                ),
              ),
            ),
            Text("Count: $_count")
          ],
        ),
      ),
    );
  }

  void _countFunction() {
    setState(() {
      _count++;
    });
  }
}


