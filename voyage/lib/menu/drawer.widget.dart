import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                  )),
          ListTile(
            title: Text('Acceuil',style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.home,color:Colors.blue),
            trailing: Icon(Icons.arrow_right,color:Colors.blue),
            onTap: (){},
          ),
           ListTile(
            title: Text('Meteo',style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.sunny_snowing,color:Colors.blue),
            trailing: Icon(Icons.arrow_right,color:Colors.blue),
            onTap: (){},
          ),
           ListTile(
            title: Text('Gallerie',style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.photo,color:Colors.blue),
            trailing: Icon(Icons.arrow_right,color:Colors.blue),
            onTap: (){},
          ),
           ListTile(
            title: Text('Pays',style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.location_city,color:Colors.blue),
            trailing: Icon(Icons.arrow_right,color:Colors.blue),
            onTap: (){},
          ),
           ListTile(
            title: Text('Contact',style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.contact_page,color:Colors.blue),
            trailing: Icon(Icons.arrow_right,color:Colors.blue),
            onTap: (){},
          ),
           ListTile(
            title: Text('Parametre',style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.settings,color:Colors.blue),
            trailing: Icon(Icons.arrow_right,color:Colors.blue),
            onTap: (){},
          ),
           ListTile(
            title: Text('Deconnexion',style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.logout,color:Colors.blue),
            trailing: Icon(Icons.arrow_right,color:Colors.blue),
            onTap: (){},
          ),
        ],
      ));
  }
}
