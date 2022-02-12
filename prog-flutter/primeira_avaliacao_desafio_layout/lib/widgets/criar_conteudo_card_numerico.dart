import 'package:flutter/material.dart';

class ConteudoCardNumero extends StatelessWidget {
  // VARIAVEIS
  final IconData icone;
  final Color corIcone;
  final String texto1;
  final Color corTexto1;
  final Color corTexto2;
  final String texto2;
  // CONSTRUTOR
  const ConteudoCardNumero({
    Key? key,
    required this.icone,
    required this.corIcone,
    required this.texto1,
    required this.corTexto1,
    required this.texto2,
    required this.corTexto2,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column( // 1ª COLUNA
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icone,
                size: 50.0,
                color: corIcone,
              ),
            ]
          ),
          Column( // 2ª COLUNA
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text( // TEXTO DO DINHEIRO
                texto1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:  40.0,
                  fontFamily: 'ConcertOne',
                  color: corTexto1
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text( // O OUTRO TEXTO
                texto2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Marker Felt',
                  color: corTexto2
                ),
              ),
            ],
          )       
        ]
      ),
    );
  }
}