import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  const Store({Key? key,}) : super(key: key);
  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 31, 30, 30),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
