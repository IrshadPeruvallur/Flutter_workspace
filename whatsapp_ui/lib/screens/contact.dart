import 'package:flutter/material.dart';
import 'chat.dart';

class contact extends StatefulWidget {
  contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final List<String> names = [];
  final List<String> numbers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: _numberController,
                decoration: InputDecoration(labelText: 'Number'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    names.add(_nameController.text);
                    _nameController.clear();
                    numbers.add(_numberController.text);
                    
                    _numberController.clear();
                  });
                },
                child: Text("Submit"),
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      names[index],
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          names.removeAt(index);
                          numbers.removeAt(index);
                        });
                      },
                      icon: Icon(Icons.delete),
                    ),
                    
                    subtitle: Text(numbers[index]),
                  ),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: names.length,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
  void sendData(){
    Navigator.push(context,MaterialPageRoute(builder: (context) => chat()));
  }
}
