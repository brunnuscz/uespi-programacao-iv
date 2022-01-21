import 'package:exercicio_imc/constants/constantes.dart';
import 'package:flutter/material.dart';

class ConteudoNumerico extends StatelessWidget {
  // VARIAVEIS
  final String titulo;
  final Widget valor;
  final List<Widget> acoes;

  const ConteudoNumerico({
    Key? key,
    required this.titulo,
    required this.valor,
    required this.acoes
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: kTextLabelStyle,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: valor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: acoes,
        )
      ],
    );
  }
}