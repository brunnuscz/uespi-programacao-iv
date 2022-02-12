import 'package:flutter/material.dart';

class ConteudoCard extends StatelessWidget {
  // VARIAVEIS
  final IconData icone;
  final Color corIcone;
  final String texto1;
  final Color corTexto1;
  final String texto2;
  final Color corTexto2;
  // CONSTRUTOR
  const ConteudoCard({
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
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text( // NÚMERO
            texto1,
            style: TextStyle( // ESTILO DO TEXTO
              fontSize: 20.0,
              fontFamily: 'ConcertOne',
              color: corTexto1
            ),
          ),
          Icon( // ICONE
            icone,
            size: 35.0,
            color: corIcone,
          ),
          Text( // NOME
            texto2,
            textAlign: TextAlign.center,
            style: TextStyle( // ESTILO DO TEXTO
              fontSize: 20.0, 
              fontFamily: 'Marker Felt',
              color: corTexto2
            ),
          ),
        ],
      ),
    );
  }
}