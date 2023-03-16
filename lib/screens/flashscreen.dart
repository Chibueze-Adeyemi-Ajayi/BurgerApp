import 'package:burger_app/fragments/image_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key,}) : super(key: key);
  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  
final PageController _pageController = PageController();
final Color _color_1 =Colors.white;

  @override
  Widget build(BuildContext context) {

    _pageController.addListener(() { 
      if (_pageController.hasClients) {
        double? _page_index = _pageController.page;
        if (_page_index == 0.0) {

        } else if (_page_index == 1.0) {

        } else if (_page_index == 2.0) {

        }
      }
    });
    
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 31, 30, 30),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 50,),
            Container(width: 250, height: 250, child: PageView(
              controller: _pageController,
              children: [
              ImagePage(),ImagePage(),ImagePage(),
            ],),),
            Container(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
              Icon(Icons.circle, color: Colors.white, size: 15,), Container(width: 5,),
              Icon(Icons.circle, color: Colors.white, size: 15,), Container(width: 5,),
              Icon(Icons.circle, color: Colors.white, size: 15,),
            ],),
            Container(height: 40,),
            const Text("Try the best \nburgers now !", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold, fontFamily: "JosefinSans"),),
            Container(height: 35,),
            const Text("Find different flavours and \nenjoy them at every moments", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal, fontFamily: "LuxuriousRoman"),),
            Container(height: 35,),
            GestureDetector(child: Icon(Icons.arrow_circle_right_sharp, size: 75, color: Colors.white54,),
            onTap: () {},)
          ],
        ),) 
      ),
    );
  }
}
