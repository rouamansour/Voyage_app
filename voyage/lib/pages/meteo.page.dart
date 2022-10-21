import 'package:flutter/material.dart';
import '../menu/drawer.widget.dart';

class MeteoPage extends StatelessWidget{
  TextEditingController txt_ville = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Météo'),
         ),
         body: Column (
          children : [
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: txt_ville,
                decoration: InputDecoration(prefixIcon: Icon (Icons.location_city),
                hintText: "Ville",
                border : OutlineInputBorder (
                  borderSide: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Container(padding: EdgeInsets.all(10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50)),
              onPressed: (){},
              child: Text('Chercher', style: TextStyle(fontSize: 22))),
              ),
          ],
    ));
  }

}
