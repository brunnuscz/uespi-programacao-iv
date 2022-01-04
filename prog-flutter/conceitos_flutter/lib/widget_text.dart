import 'package:flutter/material.dart';

widgetText() {
  return Center( // filho do Container 
    child: Text( // filho do Center 
      "Widget Text", 
      style: TextStyle( // estilo do texto
        fontSize: 30.0, // tamanho
        color: Colors.orange, //cor
        fontWeight: FontWeight.bold, // negrito
        decoration: TextDecoration.underline, // linha em baixo
        decorationColor: Colors.red, // cor da linha
        decorationStyle: TextDecorationStyle.wavy // estilo da linha
      )
    ),
  );
}
