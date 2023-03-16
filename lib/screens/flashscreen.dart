import 'package:flutter/material.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key,}) : super(key: key);
  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  
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
