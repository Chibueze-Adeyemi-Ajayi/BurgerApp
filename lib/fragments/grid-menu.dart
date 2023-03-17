import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// list of subsidiar
class GridMenu extends StatefulWidget {
  const GridMenu({Key? key,}) : super(key: key);
  @override
  State<GridMenu> createState() => _GridMenuState();
}

class _GridMenuState extends State<GridMenu> {
  List <Icon> icons = [
    Icon(Icons.home, color: Colors.white60,),
    Icon(Icons.store, color: Colors.white60,),
    Icon(Icons.search, color: Colors.white60,),
    Icon(Icons.person, color: Colors.white60,),
  ];
  List <Text> texts = [
    Text("Chicken", style: TextStyle(color: Colors.white60, fontSize: 8),),
    Text("Beef", style: TextStyle(color: Colors.white60),),
    Text("Vegetable", style: TextStyle(color: Colors.white60),),
    Text("Cheese", style: TextStyle(color: Colors.white60),),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70, width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: GridView.count(
        // physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 4,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(4, (index) {
        return Center(
          child: GestureDetector(onTap: () {}, child: Container(
            width: 70, height: 70, decoration: BoxDecoration(color: Colors.white12, 
            borderRadius: BorderRadius.circular(35)),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
            children: [
            icons[index], texts[index], 
          ],),)),
        );
      }),
    ),);
  }
}
