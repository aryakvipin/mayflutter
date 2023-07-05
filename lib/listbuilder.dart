import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: list_builder(),));
}

class list_builder extends StatelessWidget{
  var data=['malu','anu','ramu','manu', 'vinu'];
  var colorss=[800,700,600,300,200];
   var  images=["assets/images/dog.png","assets/images/dog.png","assets/images/dog.png","assets/images/dog.png","assets/images/dog.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("list page"),),
      body: ListView.builder(
          itemCount:images.length ,
          itemBuilder: (context,index){
        return Card(color: Colors.cyan[colorss[index]],
          child: ListTile(
          leading: CircleAvatar(child: Image(image: AssetImage(images[index]),)),
          title: Text(data[index]),
          trailing: Icon(Icons.call),
        ),
        );
      }
      )
    );
  }

}