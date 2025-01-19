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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        leading: Icon(Icons.home),
        title: Text("Mamou Fix"),
      ),
      body: ListView.builder(
          itemCount: listes.length,
          itemBuilder: (context, index) {
            Map liste = listes[index];

            return Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: Image.network(
                    liste['image'],
                    width: 80,
                  ),
                  title: Text(
                    '${liste['nom']} ${liste['prenom']}',
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text('${liste['age']} ans'),
                ));
          }),
    );
  }
}
