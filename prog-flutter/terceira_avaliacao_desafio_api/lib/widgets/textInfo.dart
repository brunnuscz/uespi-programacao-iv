import 'package:flutter/material.dart';
import 'package:templateapp/utils/constants.dart';

class TextInfo extends StatelessWidget {

  final String textInfo;
  final String textDado;

  TextInfo({
    this.textInfo,
    this.textDado
  });

  @override
  Widget build(BuildContext context) {
    // LINHA QUE CONTÉM OS DOIS TEXTOS
    return Row(
      children: [
        Text(
          textInfo,
          style: kTextStyleInfoCep
        ),
        Text(
          textDado,
          style: kTextStyleInfoDadoCep
        ),
      ],
    );
  }
}