import 'package:flutter/material.dart';
import 'package:voyage/pages/authentification.page.dart';
import 'package:voyage/pages/home.page.dart';
import 'package:voyage/pages/inscription.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes={
    '/home':(context)=> HomePage(),
    '/inscription':(context) =>InscriptionPage(),
    '/authentification':(context)=> AuthentificationPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:routes,
      home: InscriptionPage(),
    );
  }
}
