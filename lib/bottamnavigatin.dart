import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TabView',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectersint=0;
  List bodys=[
    Center(child: Card(child: Text("Home"),)),
    Center(child: Card(child: Text("Account"),)),
    Center(child: Card(child: Text("search"),)),
    Center(child: Card(child: Text("settings"),)),

  ];
  void itemshow(int index){
    setState(() {
    selectersint=  index;
    });
  }
  @override
  Widget build(BuildContext context) {


      return Scaffold(
         appBar: AppBar(title: Text("bottam"),),
        bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.yellow,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
         BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Account"),
         BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
         BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings")


        ],
          currentIndex: selectersint,
          onTap: itemshow,

        ),
        body: bodys.elementAt(selectersint),
      );

  }
}