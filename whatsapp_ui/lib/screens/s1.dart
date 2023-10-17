import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui/screens/s3.dart';

class s1 extends StatefulWidget {
  const s1({super.key});

  @override
  State<s1> createState() => _s1State();
}

class _s1State extends State<s1> {
  @override
  void initState() {
    gotologin();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: 
      Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 236, 229, 221),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(image:NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/1022px-WhatsApp.svg.png"),width: 100,),
                 
                ],
              ),
              
            ),
          ),Expanded(
            child: Container(
                  color: Color.fromARGB(255, 236, 229, 221),
                  width: double.infinity,
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             Text("FROM",style: 
                TextStyle(color: Color.fromARGB(255, 37, 211, 102)),),
                Image(image:NetworkImage("https://images.hindustantimes.com/tech/img/2021/10/28/960x540/FACEBOOK-CONNECT-5_1635447947639_1635447999621.JPG"),width: 100,),
            ],
                  ),
                  
                ),
          ),
        ],
      ),
      
    );
  }



  Future <void> gotologin()async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => s3()));
  }
}

