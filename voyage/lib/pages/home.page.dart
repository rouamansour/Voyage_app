import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{
  const HomePage({Key? key}): super(key:key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Page Home')),
      body: Center(
        child:Text(
          'Home Page ',
          style:TextStyle(fontSize: 22),
        )) );
    
  }
}