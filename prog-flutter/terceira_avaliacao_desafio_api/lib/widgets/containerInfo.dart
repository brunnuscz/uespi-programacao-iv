import 'package:flutter/material.dart';
import 'package:templateapp/utils/constants.dart';

class ContainerInfo extends StatelessWidget {
  final String texto;
  final String caminhoImagem;
  const ContainerInfo({
    Key key,
    this.texto,
    this.caminhoImagem
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CONTAINER QUE CONTÉM A FOTO E O CEP
    return Container(
      color: kAzulEscuro,
      width: double.infinity,
      height: 200.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(caminhoImagem, width: 100,),
              ),
              Text(
                texto.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kBranco,
                  fontSize: 18.0,
                  fontFamily: 'Poppins'
                ),
              ),
            ],
          ),
        ]
      ),   
    );
  }
}