import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';

class ParametrePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:MyDrawer(),
        appBar: AppBar(title: Text(' Parametre')),
        body: Center(
            child: Text(
              'Page Parametre',
              style: Theme.of(context).textTheme.headline3,
        ),
        ),
        );
  }
}