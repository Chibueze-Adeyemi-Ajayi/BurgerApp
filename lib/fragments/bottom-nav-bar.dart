import 'package:flutter/material.dart';
// bottom navigation bar
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key,}) : super(key: key);
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // nav bar i
  List <Icon> icons = [
    Icon(Icons.home, color: Colors.white60,),
    Icon(Icons.store, color: Colors.white60,),
    Icon(Icons.search, color: Colors.white60,),
    Icon(Icons.person, color: Colors.white60,),
  ];
  List <Text> texts = [
    Text("Home", style: TextStyle(color: Colors.white60),),
    Text("Shop", style: TextStyle(color: Colors.white60),),
    Text("Search", style: TextStyle(color: Colors.white60),),
    Text("Profile", style: TextStyle(color: Colors.white60),),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75, width: MediaQuery.of(context).size.width,
      color: Colors.white10,
      child: GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 4,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(4, (index) {
        return Center(
          child: GestureDetector(onTap: () {}, child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
            children: [
            icons[index], texts[index], Container(height: 20,)
          ],)),
        );
      }),
    ),);
  }
}
