import 'package:burger_app/fragments/bottom-nav-bar.dart';
import 'package:burger_app/fragments/food-item-grid.dart';
import 'package:burger_app/fragments/grid-menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  const Store({required this.callback});
  final callback; 
  @override
  State<StatefulWidget> createState() => _StoreState(callback: this.callback);
}

class _StoreState extends State<StatefulWidget> {
   _StoreState({required this.callback});
  final callback;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 31, 30, 30),
          child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 31, 30, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 75,),
                const Text("What is your", textAlign: TextAlign.left, style: TextStyle(color: Colors.white60, fontSize: 27, ),),
                Container(height: 5,),
                const Text("favorite burger ?", style: TextStyle(color: Colors.white, fontSize: 35, )),
                Container(height: 30,),
                Container(height: 55, width: MediaQuery.of(context).size.width, decoration: BoxDecoration(
                  color: Colors.white12, borderRadius: BorderRadius.circular(5)
                ), padding: const EdgeInsets.all(14), child: const Text("Search", style: TextStyle(color: Colors.white70, fontSize: 23),),),
                Container(height: 30,),
                const GridMenu(),
                const FoodItemsGrid()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(color: const Color.fromARGB(255, 31, 30, 30), 
      child:const BottomNavBar() // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}