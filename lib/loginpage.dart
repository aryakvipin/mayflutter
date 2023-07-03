import 'package:flutter/material.dart';
import 'package:mayflutter/listview.dart';
import 'package:mayflutter/signup.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: loginpage(),
  ));
}

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
    final fromkey=GlobalKey<FormState>();
  bool showpass= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("loginpage"),
      ),
      body: Form(
        key: fromkey,
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Loginpage",
                style: TextStyle(color: Colors.cyan, fontSize: 30),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 60, right: 60),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "username",
                    hintText: "username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80))
                ),
                textInputAction: TextInputAction.next,
                validator: (email){
                  if(email==null || email.isEmpty){
                    return'This feild is required';
                  }
                },
                // validator: (email) {
                //   if (email == null || email.isEmpty) {
                //     return 'This field is required';
                //   }
                //
                //
                //   return null;
                // },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 60, right: 60,bottom: 60),
              child: TextFormField(
                      obscureText:showpass ,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),

                  suffixIcon:IconButton(onPressed: () {
                 setState(() {
                     if(showpass){
                       showpass=false;

                     }
                     else{
                       showpass=true;
                     }
                 });
                  }, icon: Icon(showpass==true ?Icons.visibility_off :Icons.visibility),) ,

                  labelText: "password",
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
                textInputAction: TextInputAction.done,
                validator: (passwors) {
                  if (passwors!.isEmpty || passwors.length < 6) {
                    return " plesse Enter valid password";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(60),
              child: ElevatedButton(onPressed:(){
                final valid = fromkey.currentState!.validate();
                if (valid) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => listpage()));
                } else {
                  return null;
                }
              }, child: Text("login")),
            ),
            TextButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Signupp()));
            }, child: Text("not a user ? create a new Account"))

          ],
        ),
      ),
    );
  }
}
