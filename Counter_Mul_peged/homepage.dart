// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  int value = 0;
  String txt = "The value is Less Than:";

  void _incr(){
    setState(() {
      value++;
      if(value < 5) {
        txt = "value less than :";
      }else {
        txt = "over 5 on:";
      }
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'CounterApp',
          style: TextStyle(
            color: Colors.amber,
          )
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 50,
            left: 20,
              //crossAxisAlignment: CrossAxisAlignment.center,
                child:SizedBox(
                  height: 50,width: 100,
                  child: FloatingActionButton(
                    backgroundColor: Colors.amber,
                    onPressed: _incr,
                    child:const Text('tap me..'),
                  ),
                )
          ),
          Center(
            child: Text('$txt $value'),
          )
        ],
      ),
    );
  }
}
