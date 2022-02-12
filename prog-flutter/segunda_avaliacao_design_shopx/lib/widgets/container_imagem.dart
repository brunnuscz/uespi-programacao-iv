import 'package:flutter/material.dart';

class ContainerImagem extends StatelessWidget {
  final String texto;
  const ContainerImagem({ Key? key, required this.texto }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 7.0),
      height: 65,
      width: 65,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15.0)), // CURVA DOS CANTOS DA IMAGEM
            child: Image.asset('../images/tenis-2.jpg',),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  texto,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ]
            ),
          ),
        ]
      ),
    );
  }
}