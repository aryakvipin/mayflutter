
import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(home: Myapp(),));
}
class  Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState()  =>Myappstate();

}

class Myappstate  extends State{
  @override
  void initState() {
     Timer(Duration(seconds: 5), () {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
     });
     }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(child:Center(
       child: Text("hiiii"),
     ) ,),

   );
  }
}
