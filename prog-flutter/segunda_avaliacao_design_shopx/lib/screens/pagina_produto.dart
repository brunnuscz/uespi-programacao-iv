import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:segunda_avaliacao_design_shopx/constants/constantes.dart';
import 'package:segunda_avaliacao_design_shopx/screens/pagina_item.dart';
import 'package:segunda_avaliacao_design_shopx/widgets/botao.dart';
import 'package:segunda_avaliacao_design_shopx/widgets/card_icone.dart';
import 'package:segunda_avaliacao_design_shopx/widgets/container_menu.dart';
import 'package:segunda_avaliacao_design_shopx/widgets/container_numerico.dart';

// flutter pub add font_awesoe_flutter

class PaginaProduto extends StatefulWidget {
  
  const PaginaProduto({
    Key? key,
  }) : super(key: key);

  @override
  _PaginaProdutoState createState() => _PaginaProdutoState();
}

class _PaginaProdutoState extends State<PaginaProduto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCorBranco2,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                // PESQUISAR
                Container(
                  margin: const EdgeInsets.only(top: 40.0,right: 20.0,left: 20.0,bottom:10.0), // MARGEM DE CADA LADO
                  decoration: BoxDecoration(
                    color: Colors.white, // COR
                    borderRadius: BorderRadius.circular(15.0), // CURVA DOS CANTOS
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0,right: 20.0,left: 20.0,bottom:10.0), // PADDING EM TODAS OS LADOS
                      child: Row(  // LINHA
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // ESPAÇAMENTO
                        children: [ // ARRAY
                          Column( // COLUNA
                            children: [ // ARRAY
                              Builder( // SÓ PRA SUMIR AS LINHAS AZUIS
                                builder: (context) {
                                  return const Text( // TEXTO
                                    'Search here...',
                                    style: kTextStyleTextoCinza // ESTILO
                                  );
                                }
                              ),
                            ]
                          ),
                          Column( // COLUNA
                            children: [ // ARRAY
                              Builder(
                                builder: (context) {
                                  return const Icon( // ICONE DE BUSCAR
                                    Icons.search,
                                    color: kCorPreto,
                                    size: 30.0,
                                  );
                                }
                              ),
                            ]
                          ),
                        ]
                      ),
                    ),
                  ),
                // DINHEIRO
                const ContainerNumerico(),
                // ITENS
                Container(
                  margin: const EdgeInsets.only(top: 5.0,left:13.0), // MARGEM
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Builder(
                          builder: (context) {
                            return const CardIcone(
                              icone: FontAwesomeIcons.percentage,
                              corDoCard: kCorAzul,
                              corDoIcone: Colors.white,
                              texto: 'Best Deal',
                              corDoTexto: Colors.white
                            );
                          }
                        ),
                        const CardIcone(
                          icone: FontAwesomeIcons.tshirt,
                          corDoCard: Colors.white,
                          corDoIcone: kCorPreto,
                          texto: 'Life Style',
                          corDoTexto: kCorCinza3
                        ),
                        const CardIcone(
                          icone: FontAwesomeIcons.solidLightbulb,
                          corDoCard: Colors.white,
                          corDoIcone: kCorPreto,
                          texto: 'Furniture',
                          corDoTexto: kCorCinza3
                        ),                      
                        const CardIcone(
                          icone: FontAwesomeIcons.utensils,
                          corDoCard: Colors.white,
                          corDoIcone: kCorPreto,
                          texto: 'Kitchen',
                          corDoTexto: kCorCinza3
                        ),
                        const CardIcone(
                          icone: FontAwesomeIcons.shoePrints,
                          corDoCard: Colors.white,
                          corDoIcone: kCorPreto,
                          texto: 'Shoe',
                          corDoTexto: kCorCinza3
                        ),
                      ],
                    ),
                  ),
                ),
                // IMAGENS
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Stack(
                            children: 
                            [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(Radius.circular(15.0)), // CURVA DOS CANTOS DA IMAGEM
                                child: Image.asset(
                                  '../images/mochila.jpg',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:10.0, left: 90.0,right: 10.0),
                                child: CriaBotao( 
                                  corBotao: kCorLaranja,
                                  texto: '\$42.50',
                                  corTexto: Colors.white,
                                  altura: 30.0,
                                  largura: 70.0,
                                  tamanhoFonte: 15.0,
                                  onPressed: (){}, 
                                ),
                              ),
                            ]
                          ),
                          margin: const EdgeInsets.only(top:10.0,right:10.0,left: 20.0),
                          height: 175,
                          width: 175,
                        ),
                        
                        Container(
                          margin: const EdgeInsets.only(top:10.0,right:20.0,left:10.0),
                          decoration: BoxDecoration(
                            color: Colors.white, // COR
                            borderRadius: BorderRadius.circular(15.0), // CURVA DOS CANTOS
                          ),
                          child: Stack(
                            children: [
                              IconButton(
                                iconSize: 155,
                                icon: Image.asset(
                                  "../images/tenis-1.jpg",
                                ),
                                onPressed: () {
                                  setState(() { // RECEBI UMA FUNÇÃO COMO PARAMETRO
                                    Navigator.push( // NAVEGAÇÃO PÁGINA
                                      context,
                                      MaterialPageRoute(// ROTA
                                        builder: (context){
                                          return const PaginaItem();
                                        }
                                      ), 
                                    );
                                  });
                                }
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:10.0,left: 90.0, right: 10.0),
                                child: CriaBotao(
                                  texto:'\$18.50',
                                  corTexto: Colors.white,
                                  altura: 30.0,
                                  largura: 70.0,
                                  corBotao: kCorLaranja,
                                  tamanhoFonte: 15.0,
                                  onPressed: (){},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                    ),
                  ]
                ),
                // TEXTO
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top:20.0,left:30.0, bottom: 20.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Builder(
                                builder: (context) {
                                  return const Text(
                                    'Nest Doorbell\n(battery)',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                }
                              ),
                            ]
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:50.0, right: 30.0),
                            child: Column(
                              children: [
                                Builder(
                                  builder: (context) {
                                    return const FaIcon(
                                      FontAwesomeIcons.heart,
                                      color: kCorPreto,
                                    );
                                  }
                                ),
                              ],
                            ),
                          ),            
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top:10.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Builder(
                                builder: (context) {
                                  return const Text(
                                    'Jordan Zoom\nSaparete PF',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                }
                              ),
                            ]
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:50.0),
                            child: Column(
                              children: [
                                Builder(
                                  builder: (context) {
                                    return const FaIcon(
                                      FontAwesomeIcons.solidHeart,
                                      color: kCorVermelho,
                                    );
                                  }
                                ),
                              ]
                            ),
                          ),
                        ]
                      ),
                    ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(20.0)), // CURVA DOS CANTOS DA IMAGEM
                        child: Image.asset('../images/banner.jpg'),
                      ),
                      height: 200,
                      width: 360,
                    ),
                  ]
                ),
              ]
            ),
            const ContainerMenu()
          ]
        ),
      ),
    );
  }
}
