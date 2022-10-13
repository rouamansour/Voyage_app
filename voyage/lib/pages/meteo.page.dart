import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';

class MeteoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:MyDrawer(),
        appBar: AppBar(title: Text(' Meteo')),
        body: Center(
            child: Text(
              'Page meteo',
              style: Theme.of(context).textTheme.headline3,
        ),
        ),
        );
  }
}