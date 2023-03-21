import 'dart:ffi';

import 'package:burger_app/fragments/food-items.dart';
import 'package:flutter/material.dart';

class FoodItemsGrid extends StatefulWidget {
  const FoodItemsGrid({Key? key,}) : super(key: key);
  @override
  State<FoodItemsGrid> createState() => _FoodItemsGridState();
}

class _FoodItemsGridState extends State<FoodItemsGrid> {
  List <List<String>> items = [
    ["Grilled Chicken Burger", "Ground chicken burger", "8"],
    ["Grilled Chicken Burger", "Ground chicken burger", "9"],
    ["Grilled Chicken Burger", "Ground chicken burger", "7"],
    ["Grilled Chicken Burger", "Ground chicken burger", "10"],
  ];
  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: GridView.count(
       // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(6, (index) {
        return FoodItem();
      }),
    ),
    );
  }
}
