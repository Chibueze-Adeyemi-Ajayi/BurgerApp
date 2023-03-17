import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {
  const FoodItem({Key? key,}) : super(key: key);
  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Text("data"),
    );
  }
}
