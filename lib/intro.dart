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
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int compteur = 0;

  void incrementCompteur() {
    setState(() {
      compteur++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        leading: Icon(Icons.home),
        title: Text("Mamou Fix"),
      ),
      // body: Center(
      //   child: Text(
      //     "Mamou Flix $compteur",
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //     child: Icon(Icons.add),
      //     onPressed: () {
      //       incrementCompteur();
      //     }),
    );
  }
}
