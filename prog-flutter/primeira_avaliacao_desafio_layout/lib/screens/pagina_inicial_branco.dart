import 'package:flutter/material.dart';
import 'package:primeira_avaliacao_desafio_layout/constants/constantes.dart';
import 'package:primeira_avaliacao_desafio_layout/widgets/criar_botao_retangular.dart';
import 'package:primeira_avaliacao_desafio_layout/widgets/criar_botao_circular.dart';
import 'package:primeira_avaliacao_desafio_layout/widgets/criar_conteudo_card.dart';
import 'package:primeira_avaliacao_desafio_layout/widgets/criar_conteudo_card_numerico.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePageWhite extends StatefulWidget {
  const MyHomePageWhite({
    Key? key
  }) : super(key: key);
  @override
  _MyHomePageWhiteState createState() => _MyHomePageWhiteState();
}

class _MyHomePageWhiteState extends State<MyHomePageWhite> {
  // VARIAVEIS
  String novosPedidos = '*';
  String novosClientes = '*';
  String novasCidades = '*';
  String valor = '_,__';
  IconData iconeOlho = FontAwesomeIcons.solidEyeSlash;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCorBranco2,  // COR DO FUNDO
      body: SafeArea(
        child: Column( // TUDO TA DENTRO DE UMA COLUNA
          children: [ // ARRAY
            // AVATAR E O NOME
            Expanded(
              flex: 3,
              child: Row( // LINHA
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Builder( // COLOQUEI PRA TIRAR AS LINHAS AZUIS
                        builder: (context) {
                          // CRIANDO UM PERFIL
                          return const CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('images/bruno.jpg'),
                          );
                        }
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Builder( // COLOQUEI PRA TIRAR AS LINHAS AZUIS
                        builder: (context) {
                          return const Text(
                            'Olá',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: kCorRoxo3,
                              fontFamily: 'Marker Felt',
                            ),
                          );
                        }
                      ),
                      const Text(
                        'Bruno!',
                        style: TextStyle(
                          fontSize: 60.0,
                          color: kCorRoxo1,
                          fontFamily: 'Marker Felt',
                        ),
                      ),
                    ]
                  ),
                ],
              ),
            ),
            // PARABÉNS E OLHO
            Row( // LINHA
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ // ARRAY
                const Text( // TEXTO
                  'Parabéns! Esse mês você fez',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: kCorRoxo3,
                    fontFamily: 'Marker Felt'
                  ),// ESTILO DO TEXTO
                ),
                IconButton( // BOTÃO COM ICONE
                  icon: FaIcon(
                    iconeOlho,
                    color: kCorRoxo2,
                    size: 30.0,
                  ), // ICONE
                  // FUNCIONALIDADE PRO BOTÃO DO OLHO
                  onPressed: () { // O QUE FAZER AO PRESSIONAR
                    setState(() {
                      if(novosPedidos == '*'){
                        novosPedidos = '12';
                        novasCidades = '20';
                        novosClientes = '20';
                        valor = '32.000,00';
                        iconeOlho = FontAwesomeIcons.solidEye;
                      }
                      else{
                        novosPedidos = '*';
                        novasCidades = '*';
                        novosClientes = '*';
                        valor = '_,__';
                        iconeOlho = FontAwesomeIcons.solidEyeSlash;
                      }
                    });
                  }
                ),
              ],
            ),
            // CARD DOS ICONES E NOMES
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0, vertical: 8.0
              ), // MARGEM
              decoration: BoxDecoration(
                color: kCorRoxo4,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ConteudoCard(
                    icone: Icons.shop_2,
                    corIcone: kCorRoxo1,
                    texto1: '       $novosPedidos',
                    corTexto1: kCorRoxo2,
                    texto2: 'novos\npedidos',
                    corTexto2: kCorRoxo3,
                  ),
                  ConteudoCard(
                    icone: Icons.people,
                    corIcone: kCorRoxo1,
                    texto1: '       $novosClientes',
                    corTexto1: kCorRoxo2,
                    texto2: 'novos\nclientes',
                    corTexto2: kCorRoxo3,
                  ),
                  ConteudoCard(
                    icone: Icons.location_city_sharp,
                    corIcone: kCorRoxo1,
                    texto1: '       $novasCidades',
                    corTexto1: kCorRoxo2,
                    texto2: 'novas\ncidades',
                    corTexto2: kCorRoxo3,
                  ),
                ],
              ),
            ),
            // CARD DO VALOR
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0
              ),
              decoration: BoxDecoration(
                color: kCorRoxo4,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ConteudoCardNumero(
                icone: Icons.shop_2,
                corIcone: kCorRoxo1,
                texto1: 'R\$ $valor',
                corTexto1: kCorRoxo3,
                texto2: '             em novos pedidos',
                corTexto2: kCorRoxo1,
              ),
            ),
            // BOTÃO DO +
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BotaoCircular(
                      icon: Icons.add,
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
            ),
            // ULTIMOS BOTÕES
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children:[
                        BotaoRetangular( // METODO QUE CRIA O 1º BOTÃO DA PARTE DE BAIXO
                          iconBotao: Icons.home,
                          corBotao: kCorRoxo1,
                          corTexto: kCorBranco2,
                          corIcone: kCorBranco2,
                          texto: 'Home',
                          onPressed: () {},
                        ),
                      ]
                    ),
                    Column(
                      children: [
                        BotaoRetangular( // METODO QUE CRIA O 2º BOTÃO shop DA PARTE DE BAIXO
                          iconBotao: Icons.shop_2,
                          corBotao: kCorRoxo2,
                          corTexto: kCorBranco2,
                          corIcone: kCorBranco2,
                          texto: '',
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        BotaoRetangular( // METODO QUE CRIA O 3º BOTÃO DA PARTE DE BAIXO
                          iconBotao: Icons.people,
                          corBotao: kCorRoxo2,
                          corTexto: kCorBranco2,
                          corIcone: kCorBranco2,
                          texto: '',
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        BotaoRetangular( // METODO QUE CRIA O 4º BOTÃO DA PARTE DE BAIXO
                          iconBotao: Icons.trending_up,
                          corBotao: kCorRoxo2,
                          corTexto: kCorBranco2,
                          corIcone: kCorBranco2,
                          texto: '',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}