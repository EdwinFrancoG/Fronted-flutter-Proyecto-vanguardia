import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:greencollections/src/pages/home_page.dart';


import 'package:greencollections/src/pages/login_page.dart';





void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'login',
      routes: {
            'login'  : (BuildContext context ) => LoginPage(),
             'home'  : (BuildContext context ) => HomePage(),
      },
      theme: ThemeData(
        primaryColor: Colors.lightGreen
      ),
    );
  }

}