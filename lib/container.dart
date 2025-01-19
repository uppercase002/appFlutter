import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        leading: Icon(Icons.home),
        title: Text("Mamou Fix"),
      ),
      body: Container(
        color: Colors.deepOrange,
        child: Text(
          'Bonjor le monde',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black),
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(20),
        width: 200,
        height: 100,
      ),
    );
  }
}
