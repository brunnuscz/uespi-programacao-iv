import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercício Dados',
      theme: ThemeData( // TEMA FIXO
        primarySwatch: Colors.red,
      ),
      home: PaginaMeuDado(), 
    );
  }
}

// StatelessWidget É PARADO // StatefulWidget É ESTADO
class PaginaMeuDado extends StatefulWidget { // UMA PRO WIDGET
  const PaginaMeuDado({ Key? key }) : super(key: key);
  @override
  State<PaginaMeuDado> createState() => _PaginaMeuDadoState();
}

class _PaginaMeuDadoState extends State<PaginaMeuDado> { // E OUTRA QUE GERA O ESTADO DO OBJETO
  // EESTADO PRO DADO 1 E ESTADO PRO DADO 2
  int valorDadoEsquerdo = 1;
  int valorDadoDireito = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Meu App de Dados',),
      ),
      body: Row( // LINHA
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // BOTÃO DA ESQUERDA
          IconButton(
            iconSize: 150,
            icon: Image.asset(
              'images/dice$valorDadoEsquerdo.png',
            ),
            onPressed: () {
              setState(() { // RECEBI UMA FUNÇÃO COMO PARAMETRO
                valorDadoEsquerdo = proximoValor();
                valorDadoDireito = proximoValor();
              });
              print('Foi sorteado o número $valorDadoDireito do dado direito'); // MOSTRA NO TERMINAL
              print('Foi sorteado o número $valorDadoEsquerdo do dado esquerdo'); // MOSTRA NO TERMINAL
            },
          ),
          // InkWell() // REAGIR A TOQUES
          // GestureDetector()
          // BOTÃO DA DIREITA
          IconButton(
            iconSize: 150, // TAMANHO DO ICONE
            icon: Image.asset(
              'images/dice$valorDadoDireito.png',
            ),
            onPressed: () { // QUAL VAI SER O COMPORTAMENTO DO BOTÃO
              setState(() { // RECEBI UMA FUNÇÃO COMO PARAMETRO, ESTADO DO WIDGET
                valorDadoDireito = proximoValor();
                valorDadoEsquerdo = proximoValor();
              });
              print('Foi sorteado o número $valorDadoDireito do dado direito'); // MOSTRA NO TERMINAL
              print('Foi sorteado o número $valorDadoEsquerdo do dado esquerdo'); // MOSTRA NO TERMINAL
            }, 
          ),
        ],
      )
    );
  }

  // UM METADO QUE SORTEI O NUMERO DO NOME DA IMAGEM
  int proximoValor(){
    Random numero = Random();
    int numeroSorteado = numero.nextInt(6)+1; // VAI GERAR DE 0 A 6 NÚMEROS ALEATORIOS, O MAIS +1 É PRA NÃO PEGAR O 0
    return numeroSorteado;
  }
}


