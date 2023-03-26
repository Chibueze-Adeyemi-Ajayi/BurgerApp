import 'package:flutter/material.dart';

// image wid
class ImagePage extends StatefulWidget {
  const ImagePage({Key? key,}) : super(key: key);
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Image.network("https://www.transparentpng.com/thumb/food/PIIPbV-cola-potato-chips-burger-food-free-png.png", width: 250,),
    );
  }
}
