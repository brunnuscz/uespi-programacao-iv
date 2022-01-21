import 'package:flutter/material.dart';
import 'package:exercicio_imc/constants/constantes.dart';

class BotaoVermelho extends StatelessWidget {
  final void Function()? onTap;
  final String texto;

  const BotaoVermelho({
    Key? key,
    required this.onTap,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // ELE SERVA PRA (CAPITURAR DOIS CLIQUES, APERTAR E SEGURAR, ARRASTAR)
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            texto,
            style: kTextButtonCalcularStyle,
          ),
        ),
        color: kCorVermelha,
        margin: const EdgeInsets.only(top: 5.0),
        width: double.infinity,
        height: 70.0,
      ),
    );
  }
}
