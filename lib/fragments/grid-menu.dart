import 'package:flutter/material.dart';

// list of subsidiary product
class GridMenu extends StatefulWidget {
  const GridMenu({Key? key,}) : super(key: key);
  @override
  State<GridMenu> createState() => _GridMenuState();
}

class _GridMenuState extends State<GridMenu> {
  
  Widget Options (Icon icon, Text text) {
    return Container(
      padding: EdgeInsets.all(8), width: 70, height: 70,
      decoration: BoxDecoration(color: Colors.white12, borderRadius: BorderRadius.circular(35)),
      child: Column(children: [
        icon, text
      ],),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, height: 75, 
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center, 
      children: [
        GestureDetector(onTap: () { }, 
        child: Options(const Icon(Icons.abc, size: 20, color: Colors.white54,), const Text("Test", style: TextStyle(color: Colors.white54),)),),
      ],),);
  }

}
