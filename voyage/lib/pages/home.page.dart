import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../menu/drawer.widget.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}): super(key:key);
  late SharedPreferences prefs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:MyDrawer(),
        appBar: AppBar(title: Text('Page Home')),
        body: Center(
            child: Wrap(
              children:[
                InkWell(
                    child: Ink.image(
                      height: 180,
                      width: 180,
                      image: AssetImage('images/meteo.png',),),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/meteo');
                      },
                    ),
                    InkWell(
                    child: Ink.image(
                      height: 180,
                      width: 180,
                      image: AssetImage('images/gallerie.png',),),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/gallerie');
                      },
                    ),
                    InkWell(
                    child: Ink.image(
                      height: 180,
                      width: 180,
                      image: AssetImage('images/pays.png',),),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/pays');
                      },
                    ),
                    InkWell(
                    child: Ink.image(
                      height: 180,
                      width: 180,
                      image: AssetImage('images/contact.png',),),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/contact');
                      },
                    ),
                    InkWell(
                    child: Ink.image(
                      height: 180,
                      width: 180,
                      image: AssetImage('images/parametres.png',),),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/parametres');
                      },
                    ),
                    InkWell(
                    child: Ink.image(
                      height: 180,
                      width: 180,
                      image: AssetImage('images/deconnexion.png',),),
                      onTap: () {
                        _Deconnexion(context);
                      },
                    ),
              ],
            ),
        )
    );
  }

  Future<void> _Deconnexion(context) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setBool("connect", false);
    Navigator.pop(context);
    Navigator.pushNamed(context, '/authentification');
  }
}
