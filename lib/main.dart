import 'package:dio/dio.dart';
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
  final dio = Dio();

  List apiResponse = [];

  void getHttp() async {
    try {
      final response = await dio.get(
          'https://restcountries.com/v3.1/independent?status=true&fields=languages,capital');

      setState(() {
        apiResponse = response.data;
      });
    } catch (e) {
      print('error $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        // leading: Icon(Icons.home),
        title: Text("Mamou Fix"),
        centerTitle: true,
        actions: [
          Icon(Icons.camera_alt),
          IconButton(
            onPressed: () {
              getHttp();
            },
            icon: Icon(Icons.refresh),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Accueil"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("A propos"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Paramètres"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profil"),
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text("Contact"),
            ),
            Spacer(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Déconnexion...",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: apiResponse.length,
          itemBuilder: (context, index) {
            final apiResponseItem = apiResponse[index];

            final apiResponseItemCapital = apiResponseItem['capital'];

            final apiResponseItemLanguage = apiResponseItem['languages'];

            List langues = [];

            apiResponseItemLanguage.forEach((key, value) {
              langues.add(value);
            });

            return ListTile(
              leading: Icon(Icons.location_city),
              title: Text(
                " Capitale : ${apiResponseItemCapital[0]}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                "Langue parlée : ${langues.toString().replaceAll('[', '').replaceAll(']', '')}",
                style: TextStyle(
                    color: Colors.deepOrange, fontWeight: FontWeight.bold),
              ),
            );
          }),
    );
  }
}
