import 'package:flutter/material.dart';
// CASO QUEIRA O TEMA  BRANCO
//import 'package:primeira_avaliacao_desafio_layout/screens/pagina_inicial_branco.dart';
// CASO QUEIRA O TEMA  PRETO
import 'package:primeira_avaliacao_desafio_layout/screens/pagina_inicial_preto.dart';

void main() {
  runApp(const MyApp());
}

// O QUE MAIS SE REPETE NO LAYOUT
// BOTÕES, FORMATAÇÃO DE TEXTOS, OS BOX
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // RETORNA O MATERIALAPP
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // REMOÇÃO DO debug
      title: "Avaliação 1 - Desafio Layout", // TITULO
      home: MyHomePageBlack()  // TEMA PRETO
      //home: MyHomePageWhite() // TEMA BRANCO
    );
  }
}
