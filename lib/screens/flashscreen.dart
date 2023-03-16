import 'package:burger_app/fragments/image_pages.dart';
import 'package:flutter/cupertino.dart';
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
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 31, 30, 30),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 150,),
            ImagePage(),
            Container(height: 50,),
            const Text("Try the best \nburgers now !", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold, fontFamily: "JosefinSans"),),
            Container(height: 35,),
            const Text("Find different flavours and \nenjoy them at every moments", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "JosefinSans"),),
            Container(height: 35,),
            GestureDetector(child: Icon(Icons.arrow_circle_right_sharp, size: 75, color: Colors.white24,),
            onTap: () {},)
          ],
        ),) 
      ),
    );
  }
}
