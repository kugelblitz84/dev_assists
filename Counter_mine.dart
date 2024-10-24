// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  int value = 0;
  String str = "the value is less than 5";
  void _update_val(){
    setState(() {
      value++;
      _gettextforvalue();
    });
  }

  void _gettextforvalue(){
    if(value < 5) {
      str = "the value is less than 5";
    }
    else if(value < 9) {
      str = "the value is less than 9";
    }
    else {
      str = "the value is greater than 9";
    }
  }
  
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "work",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          elevation: 20,
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: ElevatedButton(onPressed: _update_val,
          child: Text(
            'the current value of the variable is : $value\n$str',
            style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        )
      )
    );
  }
}
