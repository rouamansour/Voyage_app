import 'package:flutter/material.dart';
import 'package:voyage/pages/authentification.page.dart';
import 'package:voyage/pages/home.page.dart';
import 'package:voyage/pages/inscription.page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes={
    '/home':(context)=> HomePage(),
    '/inscription':(context) =>InscriptionPage(),
    '/authentification':(context)=> AuthentificationPage(),
  };
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: 
        (BuildContext context, AsyncSnapshot<SharedPreferences> prefs){
          var x=prefs.data;
          if(prefs.hasData){
            bool conn=x?.getBool('connecte')??false;
            if(conn)
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home:HomePage(),
              routes:routes,
            );
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: AuthentificationPage(),
            routes: routes,
          );
        });
  }
}
