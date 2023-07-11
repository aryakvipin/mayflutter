import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: gird_custem()));
}

class gird_custem extends StatelessWidget {
  var image = [
    'assets/images/dog.png',
    'assets/images/apple.png',
    'assets/images/blackberry.png',
    'assets/images/fish.png',
    'assets/images/elephant.png',
    'assets/images/avocado.png',
    'assets/images/dog.png'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20

    ), childrenDelegate: SliverChildBuilderDelegate((context,index){
           return ListView(
             children: [
               Image(image: AssetImage(image[index]))
             ],
           );
    },childCount: image.length,
    )) ,
    );
  }
}
