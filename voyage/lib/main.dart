import 'package:flutter/material.dart';
import 'package:voyage/pages/inscription.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InscriptionPage(),
    );
  }
}
