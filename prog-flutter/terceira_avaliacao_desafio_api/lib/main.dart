import 'package:flutter/material.dart';
//import 'package:templateapp/Screens/consultCepPage.dart';
//import 'package:templateapp/Screens/consultOrderPage.dart';

import 'Screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UESPI TRACKER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // CHAMANDO A PRIMEIRA PÁGINA
      home: HomePage(),
    );
  }
}
