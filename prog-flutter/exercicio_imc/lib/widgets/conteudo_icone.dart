import 'package:flutter/material.dart';
// font awesome flutter PACOTE DE ICONES
class ConteudoIcone extends StatelessWidget {
  // VARIAVEIS
  final IconData data;
  final String texto;

  const ConteudoIcone({ 
    Key? key,
    required this.data, // required SÃO OBRIGATORIOS
    required this.texto
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( // CONTAINER
      child: Column( // COLUNA
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ // ARRAY
          Icon( // ICONE
            data, // FIGURA
            color: Colors.white, // COR
            size: 80 // TAMANHO
          ),
          Text(texto) // TEXTO
        ],
      ),
    );
  }
}