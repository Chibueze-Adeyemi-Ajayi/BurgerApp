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
            Image.network("https://www.transparentpng.com/thumb/food/PIIPbV-cola-potato-chips-burger-food-free-png.png", width: 250,),
            Container(height: 50,),
            const Text("Try the best burgers now !", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 35),),
          ],
        ),) 
      ),
    );
  }
}
