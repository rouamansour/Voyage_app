import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}): super(key:key);
  late SharedPreferences prefs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:MyDrawer(),
        appBar: AppBar(title: Text('Page Home')),
        body: Center(
            child: Container(
          padding: EdgeInsets.all(10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50)),
              onPressed: () {
                _Deconnexion(context);
              },
              child: Text('Deconnexion', style: TextStyle(fontSize: 22))),
        )));
  }

  Future<void> _Deconnexion(context) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setBool("connect", false);
    Navigator.pop(context);
    Navigator.pushNamed(context, '/authentification');
  }
}
class MyDrawer extends StatelessWidget{
  const MyDrawer({Key? key}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.white,Colors.blue])),
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/profile.jpg"),
                    ),
                  ))
        ],
      ));
  }
}
