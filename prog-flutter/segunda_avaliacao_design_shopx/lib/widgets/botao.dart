// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CriaBotao extends StatelessWidget {
  final String texto;
  final double altura;
  final double largura;
  final Color corBotao;
  final Color corTexto;
  final double tamanhoFonte;
  final void Function() onPressed;
  const CriaBotao({
    Key? key,
    required this.texto,
    required this.corTexto,
    required this.altura,
    required this.largura,
    required this.tamanhoFonte,
    required this.corBotao,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: altura,
      width: largura,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: corBotao, // COR
        child: Text(
          texto,
          style: TextStyle(
            color: corTexto,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w700,
            fontSize: tamanhoFonte,
          ),
        ),
        onPressed: onPressed
      ),
    );
  }
}