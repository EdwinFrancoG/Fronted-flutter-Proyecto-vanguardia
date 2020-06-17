import 'package:flutter/material.dart';
import 'package:greencollections/src/pages/contribuyente/mis_consultas_page.dart';
import 'package:greencollections/src/pages/contribuyente/mis_puntos_page.dart';
import 'package:greencollections/src/pages/contribuyente/mis_recipientes_page.dart';

import 'dart:math';
import 'dart:ui';



class MiHomePageCliente extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MiHomePageCliente> {
  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contribuyente'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){},
          )
        ],

      ),
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          callTabs(currentIndex),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //_titulos(),
              ],
            ),
          )

        ],
      ),
      //bottomNavigationBar: _bottomNavigationBar(context)
      bottomNavigationBar: tabsSeccion(),
    );
  }

  Widget _fondoApp(){

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
             Color.fromRGBO(254, 254, 252, 1.0),
            Color.fromRGBO(254, 254,252, 1.0)
          ]
        )
      ),
    );


    final cajaVerde = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 270.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(9, 192, 9, 1.0),
              Color.fromRGBO(237, 252, 165, 1.0)
            ]
          )
        ),
      )
    );
    
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -280.0,
          child: cajaVerde
        )
      ],
    );

  }

  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Green Collections', style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('Sistema de recoleccion de desechos', style: TextStyle( color: Colors.white, fontSize: 18.0 )),
          ],
        ),
      ),
    );

  }

   Widget callTabs(int paginaActual){

      switch(paginaActual){
        case 0: return MisPuntosPage();
        case 1: return MisRecipientesPage();
        case 2: return MisConsultasPage();
        default: return MisPuntosPage();

      }

   }

  Widget tabsSeccion(){

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap:(index) {
        setState(() {
          currentIndex=index;
        });
      },
      items: [
         BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('home')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.delete),
          title: Text('Mis Recipientes')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.send),
          title: Text('Consultas')
        )
      ],
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(13, 166, 49, 1.0),
        primaryColor: Colors.yellowAccent,
        textTheme: Theme.of(context).textTheme
          .copyWith( caption: TextStyle( color: Color.fromRGBO(255, 242, 117, 1.0) ) )
      ),
      child: BottomNavigationBar(
        
        items: [
          BottomNavigationBarItem(
            icon: Icon( Icons.add_circle, size: 30.0 ),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.history, size: 30.0 ),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.settings_applications, size: 30.0 ),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.arrow_back, size: 30.0 ),
            title: Container()
          ),
        ],
      ),
    );

  }
}