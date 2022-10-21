import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';

class PaysPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:MyDrawer(),
        appBar: AppBar(title: Text(' Pays')),
        body: Center(
            child: Text(
              'Page Pays',
              style: Theme.of(context).textTheme.headline3,
        ),
        ),
        );
  }
}