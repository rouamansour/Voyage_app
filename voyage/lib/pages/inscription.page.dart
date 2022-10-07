import 'package:flutter/material.dart';
class InscriptionPage extends StatelessWidget{
  // const InscriptionPage({Key? key}): super(key:key);
  TextEditingController txt_login=new TextEditingController();
  TextEditingController txt_password=new TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Page Inscription')),
      body: Column(
        children:[
          Container(
            padding: EdgeInsets.all(10),
            child:TextFormField(
              controller: txt_login,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "utilisateur",
                border:OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child:TextFormField(
                obscureText: true,
                controller: txt_password,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  hintText: "Mot de passe",
                  border: OutlineInputBorder(
                    borderSide:BorderSide(width:1),
                    borderRadius: BorderRadius.circular(10))),
                ),
              ),
            Container(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50)),
                  onPressed: () {
                    // _onInscrire(context);
                  },
                  child: Text('Inscription',style: TextStyle(fontSize: 22))),
                ),
                // TextButton(
                //   child: Text("j'ai deja un compte",
                //   style: TextStyle(fontSize: 22)),
                //   onPressed: (() {
                //     Navigator.pop(context);
                //     Navigator.pushNamed(context, '/authentification');
                //   }))          
        ],  
        ) );
    
  }
}