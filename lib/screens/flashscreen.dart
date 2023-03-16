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
            Image.network("https://www.transparentpng.com/thumb/food/PIIPbV-cola-potato-chips-burger-food-free-png.png", width: 250,),
            Container(height: 50,),
            const Text("Try the best \nburgers now !", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold, fontFamily: "JosefinSans"),),
            Container(height: 35,),
            const Text("Find different flavours and \nenjoy them at every moments", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "JosefinSans"),),
            Container(height: 45,),
            Container(
              padding: EdgeInsets.all(20), width: 70, height: 70, 
              child: Icon(Icons.forward),
              decoration: BoxDecoration( color: Colors.white24, borderRadius: BorderRadius.circular(35)),
            )
          ],
        ),) 
      ),
    );
  }
}
