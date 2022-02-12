// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:segunda_avaliacao_design_shopx/constants/constantes.dart';
import 'package:segunda_avaliacao_design_shopx/widgets/botao.dart';

class ConteinerCart extends StatelessWidget {
  const ConteinerCart({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // COR
        borderRadius: BorderRadius.circular(25.0), // CURVA DOS CANTOS
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // CONTAINER DO MAIS E MENOS
            Container(
              width: 140,
              height: 60,
              decoration: BoxDecoration(
                color: kCorBranco1,
                borderRadius: BorderRadius.circular(30.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // BOTÃO MENOS
                    RawMaterialButton(
                      elevation: 0.0,
                      child: const Icon(Icons.remove, color: Colors.white),
                      constraints: const BoxConstraints.tightFor(
                        width: 40.0,
                        height: 40.0
                      ),
                      shape: const CircleBorder(),
                      fillColor: kCorPreto,
                      onPressed: (){},
                    ),
                    //TEXTO
                    const Text(
                      '0',
                      style: TextStyle(
                        color: kCorCinza3,
                        fontFamily: 'OpenSans',
                        fontSize: 25.0
                      ),
                    ),
                    RawMaterialButton(
                      elevation: 0.0,
                      child: const Icon(Icons.add, color: Colors.white),
                      constraints: const BoxConstraints.tightFor(
                        width: 40.0,
                        height: 40.0
                      ),
                      shape: const CircleBorder(),
                      fillColor: kCorPreto,
                      onPressed: (){},
                    ),
                  ],
                ),
              )
            ),
            // BOTÃO CART
            CriaBotao(
              texto: 'Add to Cart',
              corTexto: Colors.white,
              corBotao: kCorPreto,
              largura: 200.0,
              altura: 50.0,
              tamanhoFonte: 15.0,
              onPressed: () {}, 
            ) 
          ],
        ),
      )
    );
  }
}