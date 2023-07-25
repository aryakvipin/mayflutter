import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void  main(){
  runApp(MaterialApp(home: stagerdgrid_eg(),));
}
class stagerdgrid_eg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(crossAxisCount: 2,
        mainAxisSpacing:5,
        crossAxisSpacing: 5,
        staggeredTiles: [
          StaggeredTile.count(2, 2),
          StaggeredTile.count(1, 1),
          StaggeredTile.count(1, 2),
          StaggeredTile.count(2, 2),
          StaggeredTile.count(3, 2),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(1, 2),



        ],
        children: [

          custemchild(icondate: Icons.icecream,bgcolor: Colors.deepOrangeAccent,),
          custemchild(icondate: Icons.abc_outlined,bgcolor: Colors.redAccent,),
          custemchild(icondate: Icons.access_alarm_outlined,bgcolor: Colors.green,),
          custemchild(icondate: Icons.access_time,bgcolor: Colors.greenAccent,),
          custemchild(icondate: Icons.accessible_forward,bgcolor: Colors.lightGreenAccent),
          custemchild(icondate: Icons.abc_outlined,bgcolor: Colors.redAccent,),
          custemchild(icondate: Icons.access_alarm_outlined,bgcolor: Colors.green,),
          custemchild(icondate: Icons.access_time,bgcolor: Colors.greenAccent,),




        ],),
    );
  }

}
class custemchild extends StatelessWidget{
  final Color? bgcolor;
  final IconData icondate;
  //VoidCallback onpress;
  custemchild({ this.bgcolor,required this.icondate});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(icondate,color: Colors.lightBlue,),
    );

  }

}