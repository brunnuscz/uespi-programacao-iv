import 'package:flutter/material.dart';
import 'package:segunda_avaliacao_design_shopx/screens/pagina_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // REMOVE O debug
      title: '2ª Avaliação - Design Shop X', // TITULO
      theme: ThemeData(primarySwatch: Colors.blue), // TEMA
      home: const PaginaInicial(),  // HOME
    );
  }
}
