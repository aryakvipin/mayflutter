import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: stackeg(),));
}
class stackeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          Container(color: Colors.cyan,
           padding: EdgeInsets.all(12),
          child: Text("hi"),),

          Expanded(
            child: Container(
              child: Text("cc"),
              color: Colors.green,
            ),
          ),
          Container(
            child: Text("dd"),
            color: Colors.blue,
          )
          

        ],

      )
    );
  }

}