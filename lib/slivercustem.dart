import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: MultipleGridView(),));
}
class MultipleGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Text("Title 1"),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.blue,
                child: Text("index: $index"),
              );
            },
          ),
          Text("Title 2"),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.blue,
                child: Text("index: $index"),
              );
            },
          ),
          Text("Title 3"),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.blue,
                child: Text("index: $index"),
              );
            },
          ),
          Text("Title 4"),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.blue,
                child: Text("index: $index"),
              );
            },
          )
        ],
      ),
    );
  }
}