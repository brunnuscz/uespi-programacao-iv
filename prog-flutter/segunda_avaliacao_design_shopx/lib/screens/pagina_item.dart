// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:segunda_avaliacao_design_shopx/constants/constantes.dart';
import 'package:segunda_avaliacao_design_shopx/widgets/botao.dart';
import 'package:segunda_avaliacao_design_shopx/widgets/container_cart.dart';
import 'package:segunda_avaliacao_design_shopx/widgets/container_imagem.dart';

class PaginaItem extends StatefulWidget {
  const PaginaItem({Key? key}) : super(key: key);

  @override
  _PaginaItemState createState() => _PaginaItemState();
}

class _PaginaItemState extends State<PaginaItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCorBranco2,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top:30.0,right:20.0,left:20),
                // LINHA DE CIMA
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ICONE SETA
                    Column(
                      children:[
                        Builder(
                          builder: (context) {
                            return const FaIcon(
                              FontAwesomeIcons.arrowLeft,
                              color: Colors.black,
                              size: 25.0,
                            );
                          }
                        ),
                      ]
                    ),
                    // TEXTO
                    Column(
                      children: [
                        Builder(
                          builder: (context) {
                            return const Text(
                              'Detail Product',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w700,
                              ),
                            );
                          }
                        ),
                      ],
                    ),
                    // ICONE CORAÇÃO
                    Column(
                      children:[
                        Builder(
                          builder: (context) {
                            return const FaIcon(
                              FontAwesomeIcons.solidHeart,
                              color: kCorVermelho,
                              size: 25.0,
                            );
                          }
                        ),
                      ]
                    ),
                  ]
                ),
              ),
            ),
            // FOTO DO TÊNIS
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset('../images/tenis-2.jpg'),
                    height: 250.0,
                    width: 250.0
                  ),
                ],
              ),
            ),
            // CONTAINER TEXTOS, BOTÃO E FOTOS
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: kCorBranco1, // COR
                  borderRadius: BorderRadius.circular(20.0), // CURVA DOS CANTOS
                ),
                child: Column(
                  children: [ // ARRAY
                    // LINHA TEXTO E BOTÃO
                    Container(
                      margin: const EdgeInsets.only(top: 20.0,left: 20.0, right:20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // TEXTO
                          Column( // COLUNA
                            children: [ // ARRAY
                              Builder(
                                builder: (context) {
                                  return const Text( // TEXTO
                                    'Jordan Zoom Separate\nPF - Basketball Shoes',
                                    style: TextStyle(
                                      color: kCorPreto,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600
                                    ),
                                  );
                                }
                              ),
                            ]
                          ), 
                          // BOTÃO PREÇO
                          Column(
                            children:[
                              CriaBotao( 
                                corBotao: kCorLaranja,
                                texto: '\$18.50',
                                corTexto: Colors.white,
                                altura: 50.0,
                                largura: 90.0,
                                tamanhoFonte: 20.0,
                                onPressed: (){}, 
                              ),
                            ]
                          ),
                        ],
                      ),
                    ),
                    // TEXTO
                    Container(
                      margin: const EdgeInsets.only(top: 30.0,bottom:30.0,left:20.0,right: 20.0),
                      child: Column( // COLUNA
                        crossAxisAlignment: CrossAxisAlignment.start, // NO INICIO
                        children: [ // ARRAY
                          Builder(
                            builder: (context) {
                              return const Text( // TEXTO
                                'Luka\'s step-back shot is the muse for the Nike Jordan Zoom Separate PF, a lightweight low-tops shoe that designed to help you take control on the court.',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: kCorCinza1,
                                  fontWeight: FontWeight.w500
                                ),
                              );
                            }
                          ),
                        ]
                      ),
                    ),
                    // LINHA DE FOTOS EM SEQUÊNCIA
                    Container(
                      margin: const EdgeInsets.only(left:20.0,right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Builder( // PRA REMOVER AS LINHAS AZUIS
                            builder: (context) {
                              return const ContainerImagem(texto:'');
                            }
                          ),
                          const ContainerImagem(texto:''),// CHAMANDO A CLASSE
                          const ContainerImagem(texto:''),
                          const ContainerImagem(texto:''),
                          const ContainerImagem(texto:'+4'),
                        ],
                      ),
                    ),
                    // LINHA NA HORIZONTAL
                    Container(
                      margin: const EdgeInsets.only(top:45.0,bottom:40.0),
                      child: SizedBox(
                        height: 1.5,
                        width: 360,
                        child: Container(
                          color: kCorCinza1
                        ),
                      ),
                    ),
                    const ConteinerCart()
                  ]
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}