import 'dart:ffi';

import 'package:burger_app/screens/flashscreen.dart';
import 'package:burger_app/screens/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// simple burger delivery app UI

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black87, // navigation bar color
    statusBarColor: Color.fromARGB(255, 31, 30, 30), // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burger App',
      theme: ThemeData(primarySwatch: Colors.grey,),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// cal
callback (value) {
  _MyHomePageState().useState(value);
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  void useState (value) {
    setState(() {
      index = value;
    });
  }
  List <Widget> screens = const <Widget> [
     FlashScreen(callback: callback,), 
     Store(callback: callback),
    //Store(callback: callback),
  ];
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 31, 30, 30),
          child: screens[index],
        ),
    );
  }
}
