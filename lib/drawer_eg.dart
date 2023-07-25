import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Drawereg()));
}

class Drawereg extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Drawer"),),
      drawer:
      Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.green),
         child: Drawer(
           child: ListView(
             children: [
               UserAccountsDrawerHeader(accountName: Text("arya"),
                   accountEmail: Text("arya@gmail.ccom",),
                 currentAccountPicture: GestureDetector(onTap: (){
                   print("welocome new user");
                 },
                     child: CircleAvatar(backgroundImage: AssetImage("assets/images/apple.png"),)),
                 decoration: BoxDecoration(image: DecorationImage(image:
                 NetworkImage("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg",),fit: BoxFit.fill)),
               otherAccountsPictures: [
                   CircleAvatar(backgroundImage: AssetImage("assets/images/avocado.png"),),
                 CircleAvatar(backgroundImage: AssetImage("assets/images/dog.png"),),



               ],
               ),

              ListTile(
                trailing: Icon(Icons.icecream),
                title: Text("Home"),
                leading: Icon(Icons.safety_check),
              ),
               ListTile(
                 trailing: Icon(Icons.icecream),
                 title: Text("about"),
                 leading: Icon(Icons.safety_check),
               ),
               ListTile(
                 trailing: Icon(Icons.icecream),
                 title: Text("service"),
                 leading: Icon(Icons.safety_check),
               ),
               ListTile(
                 trailing: Icon(Icons.icecream),
                 title: Text("Help"),
                 leading: Icon(Icons.safety_check),
               )
             ],

           ),
         ),
      ),

    );
  }
}
