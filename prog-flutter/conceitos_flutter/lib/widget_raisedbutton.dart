import 'package:flutter/material.dart';

widgetButton() {
  return RaisedButton( // é um filho do center
    color: Colors.red, // cor do botão
    elevation: 20.0, // sombra no botão
    textColor: Colors.white, // cor do texto
    child: Text("OK"), // texto no botão
    onPressed: exibirTexto, // o onPressed recebe um metodo
  );
}
// metodo que é chamado la em onPressed
void exibirTexto(){
  print("O botão foi pressinado");
}