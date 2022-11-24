import 'package:flutter/material.dart';
import 'package:voyage/pages/pays-details.page.dart';

import '../menu/drawer.widget.dart';

class PaysPage extends StatelessWidget {
  TextEditingController txt_pays = new TextEditingController();
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text('Page Pays')),
        body: Column(
          children: [

            Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: txt_pays,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_pin),
                      hintText: "pays",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                )
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50)),
                  onPressed: () {
                    _onGetPaysDetails(context);
                  },
                  child: Text('Chercher', style: TextStyle(fontSize: 22))),
            ),

          ],
        )
    );
  }

  void _onGetPaysDetails(BuildContext context) {
    String p=txt_pays.text;
    Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => PaysDetailsPage(p)));
    txt_pays.text="";
  }
}