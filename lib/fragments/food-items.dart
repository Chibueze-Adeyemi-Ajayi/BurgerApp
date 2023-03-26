import 'package:flutter/material.dart';

// fo
class FoodItem extends StatefulWidget {
   FoodItem({Key? key});
  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {

  @override
  Widget build(BuildContext context) {
    
    return Card(
      color: Colors.white24, 
      child: Container( height: 400,
        padding: EdgeInsets.all(6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/burger.png", width: 90,),
            const Text("KFC Hand Burger", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
            Container(height: 5,),
            const Text("Ground chicken burger", style: TextStyle(color: Colors.white,)),
            Container(height: 5,),
            Row(children: [
              const Text("\$8.00", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
              Container(width: 80,),
              Icon(Icons.add_box, color: Colors.white, size: 24,)
            ],)
          ],
        )),);
  }
}
