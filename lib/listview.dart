import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


  class listpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
     appBar: AppBar(title: Text("list page"),),
  body:  ListView(
    children: [
       Card(color: Colors.cyan,
         child: ListTile(
           leading: const CircleAvatar(
                 backgroundImage:NetworkImage("https://static01.nyt.com/images/2020/05/09/multimedia/09sp-ai-pets-promo/09sp-ai-pets-promo-mediumSquareAt3X.jpg")),
           title: Text("arya"),
           subtitle: Text("flutter"),
           trailing: Icon(Icons.call),
         ),
       ),
       Card(color: Colors.red,
         child: ListTile(
          leading:Icon(Icons.person),
          title: Text("arya"),
          subtitle: Text("flutter"),
          trailing: Icon(Icons.call),
      ),
       ),
      Card(color: Colors.green,
        child: ListTile(
          leading:Icon(Icons.person),
          title: Text("arya"),
          subtitle: Text("flutter"),
          trailing: Icon(Icons.call),
        ),
      ),
      Card(color: Colors.yellow,
        child: ListTile(
          leading:Icon(Icons.person),
          title: Text("arya"),
          subtitle: Text("flutter"),
          trailing: Icon(Icons.call),
        ),
      ),

    ],
  ),
   );
  }

  }