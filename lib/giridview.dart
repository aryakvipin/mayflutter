import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridview1(),));
}

class gridview1 extends StatelessWidget {
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
        body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        )
          ,children: [

          Card(color: Colors.cyan,
              child:
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(child: Image(image: AssetImage('assets/images/dog.png',),height: 50,width: 40,)),
                  ),
                  Text("hi")
                ],
              )),
          Card(color: Colors.cyan,
              child:
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(child: Image(image: AssetImage('assets/images/dog.png',),height: 50,width: 40,)),
                  ),
                  Text("hi")
                ],
              )),
          Card(color: Colors.cyan,
              child:
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(child: Image(image: AssetImage('assets/images/dog.png',),height: 50,width: 40,)),
                  ),
                  Text("hi")
                ],
              )),
          Card(color: Colors.cyan,
              child:
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(child: Image(image: AssetImage('assets/images/dog.png',),height: 50,width: 40,)),
                  ),
                  Text("hi")
                ],
              )),
          Card(color: Colors.cyan,
              child:
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(child: Image(image: AssetImage('assets/images/dog.png',),height: 50,width: 40,)),
                  ),
                  Text("hi")
                ],
              )),

          Card(color: Colors.cyan,
              child:
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(child: Image(image: AssetImage('assets/images/dog.png',),height: 50,width: 40,)),
                  ),
                  Text("hi")
                ],
              )),

          Card(color: Colors.cyan,
              child:
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(child: Image(image: AssetImage('assets/images/dog.png',),height: 50,width: 40,)),
                  ),
                  Text("hi")
                ],
              )),

          Card(color: Colors.cyan,
              child:
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(child: Image(image: AssetImage('assets/images/dog.png',),height: 50,width: 40,)),
                  ),
                  Text("hi")
                ],
              )),
          Card(color: Colors.cyan,
              child:
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(child: Image(image: AssetImage('assets/images/dog.png',),height: 50,width: 40,)),
                  ),
                  Text("hi")
                ],
              )),
          Card(color: Colors.cyan,
              child:
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(child: Image(image: AssetImage('assets/images/dog.png',),height: 50,width: 40,)),
                  ),
                  Text("hi")
                ],
              )),







        ]
          ,)
    );
  }

}