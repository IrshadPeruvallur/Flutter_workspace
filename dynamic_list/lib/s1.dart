import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final _textController = TextEditingController();
  final List<String> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _textController,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                items.add(_textController.text);
                _textController.clear();
              });
            },
            child: Text('Click here'),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                title: Text(items[index]),
              ),
              separatorBuilder: (context, index) => Divider(),
              itemCount: items.length,
            ),
          ),
        ],
      ),
    );
  }
}
