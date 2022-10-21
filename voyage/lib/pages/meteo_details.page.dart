import 'package:flutter/material.dart';

class MeteoDetailsPage extends StatelessWidget {
    String ville="";
    MeteoDetailsPage(this.ville); 
    @override
    Widget build(BuildContext context) {
      return Scaffold(
    appBar: AppBar(title: Text('Page Meteo Details')),
    body: Center(
    child: Text(
    'Page Meteo Details ${ville}', 
    style: TextStyle(fontSize: 22),
    ) ) ) ;
    }
}