import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'dart:convert';


class PaysDetailsPage extends StatefulWidget {
  String pays = "";
  PaysDetailsPage(this.pays);

  @override
  State<PaysDetailsPage> createState() => _PaysDetailsPageState();
}

class _PaysDetailsPageState extends State<PaysDetailsPage> {
  var paysData;

  @override
  void initState() {
    super.initState();
    getPaysData(widget.pays);
  }

  void getPaysData(String pays) {
    String url = "https://restcountries.com/v2/name/${pays}";
    http.get(Uri.parse(url)).then((resp) {
      setState(() {
        this.paysData = json.decode(utf8.decode(resp.bodyBytes));
        print(this.paysData);
      });
    }).catchError((err) {
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Page Pays Details ${widget.pays}')),
        body: paysData == null? Center(
          child: CircularProgressIndicator(),
        )
            : ListView.builder(
          itemCount: (paysData == null ? 0 : paysData.length),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  child: Card(
                    child: Image.network(paysData[index]['flags']['png']),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Text(paysData[index]['name'],
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(paysData[index]['nativeName']
                    ,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('\nAdministration \n'
                    ,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 87, 171, 240),
                    ),),
                    
                ),
                
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Capitale : '+paysData[index]['capital']
                    ,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Langue : '+paysData[0]['languages'][0]['name']+ ' , ' +paysData[0]['languages'][0]['nativeName']
                    ,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                ),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('\nGéographie \n'
                    ,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 87, 171, 240),
                    ),),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Région : '+paysData[index]['region']
                    ,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Superfice : '+paysData[index]['area'].toString()
                    ,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 32),
                  child: Text('Fuseau Horaire : '+paysData[index]['timezones'].toString()
                    ,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 32),
                  child: Text('\nDémographie \n'
                    ,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 87, 171, 240),
                    ),),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Population : '+paysData[index]['population'].toString()
                    ,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),),
                )
              ],
            );
          },
        ));
  }
}