import 'package:flutter/material.dart';
import 'package:first_project/pages/homepage.dart';
void main(){
  runApp(const counter());
}

class counter extends StatelessWidget {
  const counter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        './homepage': (context) => const homepage(),
      },
      home: const homepage(),
    );
  }
}
