import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class s3 extends StatelessWidget {
  const s3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("WhatsApp", style: TextStyle(
          fontWeight: FontWeight.bold 
        ),),
        backgroundColor: Color.fromARGB( 255,18, 140, 126),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)),
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),
        IconButton(onPressed: (){}, icon:Icon(Icons.more_vert)),
        ],
      ),

      body: 
      // Column(
      //   children: [Container(color: Color.fromARGB( 255,18, 140, 126) ,
      //     child:
      //     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt,color: Colors.white,)),
      //       TextButton(onPressed: (){}, child:Text("data")),
      //       TextButton(onPressed: (){}, child:Text("data")),
      //       TextButton(onPressed: (){}, child:Text("data"))
      //     ],),
      //   ),
        ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text("Text"),
          subtitle:Text("subtitle") ,
          leading: CircleAvatar(
            radius: 35,
            ),
            trailing: Text("10:$index"),
        ),
        itemCount:15 ,
        separatorBuilder: (context, index) => Divider())  
        ,
      ); 
    
  }
}