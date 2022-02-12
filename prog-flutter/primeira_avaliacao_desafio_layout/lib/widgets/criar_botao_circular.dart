import 'package:flutter/material.dart';
import 'package:primeira_avaliacao_desafio_layout/constants/constantes.dart';
// CLASSE PRA CRIAR UM BOTÃO CIRCULAR
class BotaoCircular extends StatelessWidget {
  // VARIAVEIS
  final IconData icon;
  final void Function() onPressed;
  // CONSTRUTOR
  const BotaoCircular({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0, // SOMBRA DO BOTÃO
      child: Icon(
        icon,
        size: 60.0,
        color: kCorBranco2,
      ), // ICONE DO BOTÃO
      constraints: const BoxConstraints.tightFor( // USAR QUANDO TIVER QUE FIXAR UM TAMANHO
        width: 60, // LARGURA
        height: 60 // ALTURA
      ),
      shape: const CircleBorder(), // FORMA DO BOTÃO
      fillColor: kCorRoxo1,  // COR
      onPressed: () {}, // QUANDO PRESSIONADO
    );
  }
}