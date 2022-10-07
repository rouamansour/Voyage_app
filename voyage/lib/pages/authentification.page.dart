import 'package:flutter/material.dart';

class AuthentificationPage extends StatelessWidget {
  const AuthentificationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Page Authentification')),
        body: Center(
            child: Text(
          'Authentification Page ',
          style: TextStyle(fontSize: 22),
        )));
  }
}
