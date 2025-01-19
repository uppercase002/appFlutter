import 'dart:ffi';

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
  List<Map> listes = [
    {
      'nom': 'Tolno',
      'prenom': 'Philippe',
      'age': 25,
      'image':
          "https://cdn.pixabay.com/photo/2023/03/13/23/48/woman-7851025_640.jpg"
    },
    {
      'nom': 'Kamal',
      'prenom': 'Mamadou',
      'age': 28,
      'image':
          "https://cdn.pixabay.com/photo/2023/03/13/23/48/woman-7851025_640.jpg"
    },
    {
      'nom': 'Sow',
      'prenom': 'Mamadou',
      'age': 32,
      'image':
          "https://cdn.pixabay.com/photo/2023/03/13/23/48/woman-7851025_640.jpg"
    },
    {
      'nom': 'Souare',
      'prenom': 'Abdoulaye',
      'age': 22,
      'image':
          "https://cdn.pixabay.com/photo/2023/03/13/23/48/woman-7851025_640.jpg"
    },
    {
      'nom': 'Sow',
      'prenom': 'Mamadou',
      'age': 32,
      'image':
          "https://cdn.pixabay.com/photo/2023/03/13/23/48/woman-7851025_640.jpg"
    },
    {
      'nom': 'Souare',
      'prenom': 'Abdoulaye',
      'age': 22,
      'image':
          "https://cdn.pixabay.com/photo/2023/03/13/23/48/woman-7851025_640.jpg"
    },
    {
      'nom': 'Sow',
      'prenom': 'Mamadou',
      'age': 32,
      'image':
          "https://cdn.pixabay.com/photo/2022/10/18/17/00/night-7530755_640.jpg"
    },
    {
      'nom': 'Souare',
      'prenom': 'Abdoulaye',
      'age': 22,
      'image':
          "https://cdn.pixabay.com/photo/2023/03/13/23/48/woman-7851025_640.jpg"
    },
    {
      'nom': 'Sow',
      'prenom': 'Mamadou',
      'age': 32,
      'image':
          "https://cdn.pixabay.com/photo/2024/12/03/01/31/accessories-9241057_640.jpg"
    },
    {
      'nom': 'Souare',
      'prenom': 'Abdoulaye',
      'age': 22,
      'image':
          "https://cdn.pixabay.com/photo/2023/03/13/23/48/woman-7851025_640.jpg"
    },
    {
      'nom': 'Sow',
      'prenom': 'Mamadou',
      'age': 32,
      'image':
          "https://cdn.pixabay.com/photo/2023/03/13/23/48/woman-7851025_640.jpg"
    },
    {
      'nom': 'Souare',
      'prenom': 'Abdoulaye',
      'age': 22,
      'image':
          "https://cdn.pixabay.com/photo/2023/03/13/23/48/woman-7851025_640.jpg"
    },
  ];

  final TextEditingController password = TextEditingController();
  final TextEditingController nom = TextEditingController();
  final TextEditingController prenom = TextEditingController();

  void enregistremen() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        leading: Icon(Icons.home),
        title: Text("Mamou Fix"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          TextField(
            controller: prenom,
            onChanged: (value) => print(value),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefix: Icon(Icons.person),
                label: Text('Prénom'),
                hintText: 'entrer votre prenom'),
          ),
          SizedBox(
            height: 18,
          ),
          TextField(
            controller: nom,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefix: Icon(Icons.person),
                label: Text('Nom'),
                hintText: 'entrer votre nom'),
          ),
          SizedBox(
            height: 18,
          ),
          TextField(
            controller: password,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffix: Icon(Icons.remove_red_eye),
                label: Text('Mot de passe'),
                hintText: 'entrer votre mot de passe'),
            // onChanged: () {},
          ),
          SizedBox(
            height: 18,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(255, 59, 69, 255))),
              onPressed: () {},
              child: Text(
                "Inscription",
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          // IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          // OutlinedButton(onPressed: () {}, child: Text("OutlineButton")),
          // FloatingActionButton(
          //   onPressed: () {},
          //   child: Icon(Icons.shape_line),
          // )
        ],
      ),
    );
  }
}
