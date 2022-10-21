import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';

class GalleriePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:MyDrawer(),
        appBar: AppBar(title: Text(' Gallerie')),
        body: Center(
            child: Text(
              'Page Gallerie',
              style: Theme.of(context).textTheme.headline3,
        ),
        ),
        );
  }
}