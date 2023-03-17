import 'package:flutter/material.dart';

class FoodItemsGrid extends StatefulWidget {
  const FoodItemsGrid({Key? key,}) : super(key: key);
  @override
  State<FoodItemsGrid> createState() => _FoodItemsGridState();
}

class _FoodItemsGridState extends State<FoodItemsGrid> {
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Text("data"),
    );
  }
}
