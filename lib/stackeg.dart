import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: stackeg(),));
}
class stackeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.red,
          ) ,
          Container(
            height: 100,
            width: 150,
            color: Colors.green,
          ),
          Positioned( bottom: 100,
              right: 100,
              child: Container(
            height: 100,
            width: 150,
            color: Colors.yellow,

          ))


        ],
      ),
    );
  }

}