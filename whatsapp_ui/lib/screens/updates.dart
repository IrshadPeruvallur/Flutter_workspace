import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui/screens/chat.dart';
import 'package:whatsapp_ui/screens/splash.dart';
import 'package:whatsapp_ui/screens/contact.dart';
import 'contact.dart';

class updates extends StatefulWidget {
  
  const updates({super.key});
  

  @override
  State<updates> createState() => _updatesState();
}

class _updatesState extends State<updates> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("WhatsApp", style: TextStyle(
          fontWeight: FontWeight.bold 
        ),),
        backgroundColor: Color.fromARGB( 255,18, 140, 126),
        actions: [IconButton(onPressed: (){}
        , icon: Icon(Icons.camera_alt)),
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),
        IconButton(onPressed: (){}, icon:Icon(Icons.more_vert)),
        ],
      ),

      body: 
      Column(
        children: [Container(
          color:  Color.fromARGB( 255,18, 140, 126),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon:Icon(Icons.groups,color: Colors.white,)),
            TextButton(onPressed: (){
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => chat()));
            }, child:Text("Chats" ,style: TextStyle(color:Colors.white),)),
            TextButton(onPressed: (){}, child:Text("Updates",style: TextStyle(color:Colors.white,),
            )),
            TextButton(onPressed: (){}, child:Text("Calls",style: TextStyle(color:Colors.white))),
          ],),
        ),Container(
          width:double.infinity,
          height: 120,
          child: ListView.separated( 
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 10,),
            itemBuilder: (context, index) => CircleAvatar(
              radius: 45,
            ),
            itemCount: 20,),
        ),
        Expanded(
          child: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text("Updates"),
            subtitle:Text("subtitle") ,
            leading: CircleAvatar(
              radius: 35,
              ),
              trailing: Text("10:$index"),
          ),
          itemCount:15,
          separatorBuilder: (context, index) => Divider()),
        )  
        ]
      ),
       floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => contact(),));
      } ,child: Icon(Icons.person_add),
      backgroundColor: Color.fromARGB( 255,18, 140, 126) ,),
    );
  }
}