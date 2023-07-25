import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: list_custem(),));
}

class list_custem extends StatelessWidget {
  var data = ['malu', 'anu', 'ramu', 'manu', 'vinu'];
  var colorss = [800, 700, 600, 300, 200];
  var images = [
    "assets/images/dog.png",
    "assets/images/dog.png",
    "assets/images/dog.png",
    "assets/images/dog.png",
    "assets/images/dog.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("list page"),),
        body: ListView.custom(
            childrenDelegate: SliverChildBuilderDelegate((context, index) {
              return Card(
                child: Text(data[index]),

              );
            },childCount: data.length
            ))
    );
  }

}