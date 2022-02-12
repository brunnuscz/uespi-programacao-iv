import 'package:flutter/material.dart';

// O QUE UM BOTÃO POSSUI?
class BotaoRetangular extends StatelessWidget {
  // VARIAVEIS
  final String texto;
  final IconData iconBotao;
  final Color corBotao;
  final Color corIcone;
  final Color corTexto;
  final void Function() onPressed;
  // CONSTRUTOR
  const BotaoRetangular({
    Key? key,
    required this.iconBotao,
    required this.corIcone,
    required this.corBotao,
    required this.texto,
    required this.corTexto,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon( // ICONE DO BOTÃO
            iconBotao,
            size: 25.0,
            color: corIcone,
          ),
          Text(
            texto,
            style: TextStyle( // ESTILO DO TEXTO DO BOTÃO
              fontSize: 15.0,
              color: corTexto,
              fontFamily: 'Marker Felt'
            ),
          ),
        ],
      ),
      fillColor: corBotao, // A COR DO BOTÃO
      shape: RoundedRectangleBorder( // DEIXANDO O BOTÃO COM CURVA NA BORDA
        borderRadius: BorderRadius.circular(10.0),
      ), // FORMA DO BOTÃO
      onPressed: () {}, // QUANDO PRESSIONADO
    );
  }
}
