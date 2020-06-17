import 'package:flutter/material.dart';


class RecoleccionDiariaPage extends StatefulWidget {
  @override
  _RecoleccionDiariaPageState createState() => _RecoleccionDiariaPageState();
}

class _RecoleccionDiariaPageState extends State<RecoleccionDiariaPage> {
  double cantidadLibrasPlastico = 150.0;
   double cantidadLibrasLata = 120.0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: new ListView(
      children: <Widget>[
        _cardPlastico(),
        _cardLata(),
        _cardCartones(),
        _cardElectronicos(),
        _cardOrganicos()
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
      color: Colors.blueGrey,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.category, size: 100),
            title: Text('Plasticos', style: TextStyle(color: Colors.white)),
            subtitle: Text('Libras $cantidadLibrasPlastico', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    ),
  );




}


Widget _cardLata(){
   	
 return Container(
    
    width: 200,
    height: 150,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      color: Colors.lightBlue,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.confirmation_number, size: 100),
            title: Text('Latas', style: TextStyle(color: Colors.white)),
            subtitle: Text('Libras $cantidadLibrasLata', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    ),
  );




}




Widget _cardCartones(){
   	
 return Container(
    
    width: 200,
    height: 150,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      color: Colors.orangeAccent,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.credit_card, size: 100),
            title: Text('Papel', style: TextStyle(color: Colors.white)),
            subtitle: Text('Libras $cantidadLibrasLata', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    ),
  );




}


Widget _cardElectronicos(){
   	
 return Container(
    
    width: 200,
    height: 150,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      color: Colors.pink,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.explicit, size: 100),
            title: Text('Electronicos', style: TextStyle(color: Colors.white)),
            subtitle: Text('Libras $cantidadLibrasLata', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    ),
  );




}



Widget _cardOrganicos(){
   	
 return Container(
    
    width: 200,
    height: 150,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      color: Colors.green,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.fastfood, size: 100),
            title: Text('Organicos', style: TextStyle(color: Colors.white)),
            subtitle: Text('Libras $cantidadLibrasLata', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    ),
  );




}

}