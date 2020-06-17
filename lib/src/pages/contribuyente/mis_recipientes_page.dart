import 'package:flutter/material.dart';

class MisRecipientesPage extends StatefulWidget {
  @override
  _MisRecipientesPageState createState() => _MisRecipientesPageState();
}

class _MisRecipientesPageState extends State<MisRecipientesPage> {
 
 String codigoRecipiente="042320125";
  @override
  Widget build(BuildContext context) {
     return new Scaffold(

      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: new ListView(
      children: <Widget>[
        _cardPlastico(),
       // _cardLata(),

      ],


      )
    );
  }


  Widget _cardPlastico(){
   	
 return Container(
    
    width: 200,
    height: 150,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      color: Colors.purple,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.delete_outline, size: 100),
            title: Text('Recipiente para plasticos', style: TextStyle(color: Colors.white)),
            subtitle: Text('Codigo $codigoRecipiente', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    ),
  );




}
}