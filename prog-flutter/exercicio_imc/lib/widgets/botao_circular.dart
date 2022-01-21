import 'package:exercicio_imc/constants/constantes.dart';
import 'package:flutter/material.dart';

// QUEREMOS UM BOTÃO CIRCULAR COM O ICONE
class BotaoCircular extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;

  const BotaoCircular({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0, // SOMBRA
      child: Icon(icon,), // ICONE
      constraints: const BoxConstraints.tightFor( // USAR QUANDO TIVER QUE FIXAR UM TAMANHO DE UMA COISA
        width: 50.0, // LARGURA
        height: 50.0 // ALTURA
      ), 
      shape: const CircleBorder(), // FORMA DO BOTÃO
      fillColor: kCorCinzaEscuro, // COR DE PREENCHIMENTO DO BOTÃO
      onPressed: onPressed, // O QUE VAI FAZER QUANDO PRESSIONAR
    );
  }
}