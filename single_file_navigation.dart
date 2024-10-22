// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(algobox());
}

class algobox extends StatelessWidget {
  const algobox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AlgoBox"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Choose item:"),
              ),
              ListTile(
                title: Text("1. Binary Search"),
                onTap: () {
                  // First close the drawer, then navigate to the new screen
                  Navigator.pop(context); // This closes the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Binary_search()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Binary_search extends StatefulWidget {
  const Binary_search({super.key});

  @override
  State<Binary_search> createState() => _Binary_searchState();
}

class _Binary_searchState extends State<Binary_search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Binary Search"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}
