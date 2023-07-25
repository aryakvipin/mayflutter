import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DropdownButton2 Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List images=[

    'assets/images/dog.jpg',
    'assets/images/dog.jpg',
    'assets/images/dog.jpg',
    'assets/images/dog.jpg',

  ];
  List name=[
    'How to Steem Like you always Have Your Shot Together',
    'How to Steem Like you always Have Your Shot Together',
    'How to Steem Like you always Have Your Shot Together',
    'How to Steem Like you always Have Your Shot Together',
  ];
  List numbers=["Jonyhy Vino","josheph","Rose","Jasmin"];

  String? selectedValue;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView.builder(itemBuilder: (BuildContext ,index){
        return Container(height:150,width: 200,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10,left: 20),
                  child: Card(
                    child: AspectRatio(
                      aspectRatio: 4 / 4,
                      child:
                      Image.asset(images[index],fit: BoxFit.fitHeight,),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(name[index],
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),maxLines: 2, overflow: TextOverflow.clip,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 1),
                              child: Icon(Icons.circle,color: Colors.redAccent,),

                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(numbers[index],
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("4 min read",
                                overflow: TextOverflow.clip,
                              ),
                            ),

                          ],
                        ),
                      ),


                    ],
                  ),
                ),

              ],
            ),
          ),

        );

      },
        itemCount: images.length,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
      ),
    );
  }
}