import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// I am

// list of subsidiary product in grid view widget
class GridMenu extends StatefulWidget {
  const GridMenu({Key? key,}) : super(key: key);
  @override
  State<GridMenu> createState() => _GridMenuState();
}

class _GridMenuState extends State<GridMenu> {
  
  Widget Options (FaIcon icon, Text text) {
    return Container(
      padding: EdgeInsets.all(8), width: 68, height: 68,
      decoration: BoxDecoration(color: Colors.white12, borderRadius: BorderRadius.circular(35)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        icon, text
      ],),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, height: 70, 
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center, 
      children: [
        GestureDetector(onTap: () { }, 
        child: Options(const FaIcon(FontAwesomeIcons.bowlFood, color: Colors.white38,), const Text("Chicken", style: TextStyle(color: Colors.white54),)),),
        GestureDetector(onTap: () { }, 
        child: Options(const FaIcon(FontAwesomeIcons.cow, color: Colors.white38,), const Text("Beef", style: TextStyle(color: Colors.white54),)),),
        GestureDetector(onTap: () { }, 
        child: Options(const FaIcon(FontAwesomeIcons.leaf, color: Colors.white38,), const Text("Veges", style: TextStyle(color: Colors.white54),)),),
        GestureDetector(onTap: () { }, 
        child: Options(const FaIcon(FontAwesomeIcons.cheese, color: Colors.white38,), const Text("Cheese", style: TextStyle(color: Colors.white54),)),),
      ],),);
  }

}
