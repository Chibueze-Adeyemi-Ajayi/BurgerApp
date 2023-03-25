import 'package:burger_app/fragments/image_pages.dart';
import 'package:burger_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Splash screen
class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key, required this.callback}) : super(key: key);
  final callback;
  @override
  State<FlashScreen> createState() => _FlashScreenState(callback: callback);
}

class _FlashScreenState extends State<FlashScreen> {
  // callback function
_FlashScreenState({required this.callback});
final callback;
final PageController _pageController = PageController();
Color _color_1 =Colors.white, _color_2 =Colors.white24,  _color_3 =Colors.white24;

  @override
  Widget build(BuildContext context) {
    // pa
    _pageController.addListener(() { 
      if (_pageController.hasClients) {
        double? _page_index = _pageController.page;
        if (_page_index == 0.0) {
          setState(() {
            _color_1 = Colors.white;  _color_2 = Colors.white24; _color_3 = Colors.white24;
          });
        } else if (_page_index == 1.0) {
          setState(() {
            _color_1 = Colors.white24;  _color_2 = Colors.white; _color_3 = Colors.white24;
          });
        } else if (_page_index == 2.0) {
          setState(() {
            _color_1 = Colors.white24;  _color_2 = Colors.white24; _color_3 = Colors.white;
          });
        }
      }
    });

    return Scaffold(
      body: SingleChildScrollView(child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 31, 30, 30),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 50,),
            Container(width: 250, height: 250, child: PageView(allowImplicitScrolling: true,
              controller: _pageController,
              children: [
              ImagePage(),ImagePage(),ImagePage(),
            ],),),
            Container(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
              Icon(Icons.circle, color: _color_1, size: 15), Container(width: 5,),
              Icon(Icons.circle, color: _color_2, size: 15,), Container(width: 5,),
              Icon(Icons.circle, color: _color_3, size: 15,),
            ],),
            Container(height: 40,),
            const Text("Try the best \nburgers now !", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold, fontFamily: "JosefinSans"),),
            Container(height: 35,),
            const Text("Find different flavours and \nenjoy them at every moments", textAlign: TextAlign.center, style: TextStyle(color: Colors.white70, fontSize: 20, fontWeight: FontWeight.normal, fontFamily: "GideonRoman"),),
            Container(height: 35,),
            GestureDetector(child: Icon(Icons.arrow_circle_right_sharp, size: 75, color: Colors.white54,),
            onTap: () {callback(1);},)
          ],
        ),) 
      ),)
    );
  }
}
