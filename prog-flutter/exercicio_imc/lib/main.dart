import 'dart:html';
import 'package:exercicio_imc/constants/constantes.dart';
import 'package:exercicio_imc/screens/pagina_inicial.dart';
import 'package:exercicio_imc/screens/pagina_resultado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// A PASTA WIDGETS SÃO COMPONENTES QUE FAZEM PARTE DA TELA
// O QUE MAIS SE REPETE NO LAYOUT?
// OS BOX, OS CARD, FORMATAÇÃO DOS TEXTOS, 2 BOTÕES
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // RETORNA O MaterialApp
      debugShowCheckedModeBanner: false, // RETIRA A MARCA debug
      // TEMA DO APLICATIVO, O ThemeData É UMA CLASSE QUE CONSTROI UM TEMA PRO APLICATIVO, TEM DOIS METODOS POR PADRÃO O dark E O light
      theme: ThemeData.dark().copyWith(
        // METODO copyWith PODE COPIAR AS PROPRIEDADE NO TEMA, E ALTERAR SOMENTE ALGUMAS PROPRIEDADE
        primaryColor: kCorFundo,
        scaffoldBackgroundColor: kCorFundo,
      ),
      title: 'Exercício IMC', // TITULO
      home: PaginaInicial(),
    );
  }
}
