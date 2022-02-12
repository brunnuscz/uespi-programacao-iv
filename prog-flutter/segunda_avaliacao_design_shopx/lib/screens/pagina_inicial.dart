import 'package:flutter/material.dart';
import 'package:segunda_avaliacao_design_shopx/constants/constantes.dart';
import 'package:segunda_avaliacao_design_shopx/screens/pagina_produto.dart';
import 'package:segunda_avaliacao_design_shopx/widgets/botao.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCorPreto,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top:60.0,left:20.0,right:20.0,bottom: 5.0),
              child: Text(
                'Solution of searching product from 2000',
                style: kTextStyleTextoSolution,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top:5.0,left:20.0,right:20.0,bottom:20.0),
              child: Text(
                'All that you need. All that you want just here at all!',
                textAlign: TextAlign.center,
                style: kTextStyleTextoNeed,
              ),
            ),
            
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // NO CENTRO
                children: [
                  SizedBox( // COLOCANDO A IMAGEM DENTRO DE UM SizedBox
                    width: 130,
                    height: 130,
                    child: Transform.rotate( // ROTACIONANDO A IMAGEM
                      angle: 0.3,
                      child: Image.asset('../images/fone.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    height: 140,
                    child: Transform.rotate( // ROTACIONANDO A IMAGEM
                      angle: 0.2,
                      child: Image.asset('../images/logo.png'),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                    height: 130,
                    child: Transform.rotate( // ROTACIONANDO A IMAGEM
                      angle: -0.3,
                      child: Image.asset('../images/moleton.jpg'),
                    ),
                  ),
                ],
              ),  
            ),
            
            Container (
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0
              ),  
              child: CriaBotao( // BOTÃO
                corBotao: kCorCinza4,
                texto: 'Create an account',
                corTexto: Colors.white,
                altura: 60.0,
                largura: 380.0,
                tamanhoFonte: 15.0,
                onPressed: (){}, 
              ),
            ),

            Container (
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0
              ),  
              child: CriaBotao( // BOTÃO
                corBotao: kCorBranco1,
                texto: 'Sing in',
                corTexto: kCorPreto,
                altura: 60.0,
                largura: 380.0,
                tamanhoFonte: 15.0,
                onPressed: (){ // MUDAR PRA OUTRA PÁGINA
                  Navigator.push( // NAVEGAÇÃO PÁGINA
                    context,
                    MaterialPageRoute(// ROTA
                      builder: (context){
                        return const PaginaProduto();
                      }
                    ), 
                  ); //DESEMPILHAR Navigator.pop()
                }, 
              ),
            ),
            
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top:30.0,left: 20.0,right: 20.0,bottom:40.0), // PADDING
                child: Text.rich( // PODER ADICIONAR UM TEXTO
                  TextSpan( // TEXTO UM DO LADO DO OUTRO
                    children: [ // ARRAY
                      TextSpan(
                         text: 'By proceeding. I accept the ',
                         style: kTextStyleTextoRodaPe, // ESTILO DO TEXTO
                      ),
                      TextSpan(
                        text: 'Shopx Shopping Service',
                        style: kTextStyleTextoRodaPeSublinhado, // ESTILO DO TEXTO SUBLINHADO
                      ),
                      TextSpan(
                        text: ' and confirm that. I have read ',
                        style: kTextStyleTextoRodaPe, 
                      ),
                      TextSpan(
                        text: 'Klarnas Privaty Policy',
                        style: kTextStyleTextoRodaPeSublinhado,
                      ),
                      TextSpan(
                        text: '. Links in the app are sponsored.',
                        style: kTextStyleTextoRodaPe,
                      ),
                    ]
                  ),
                  textAlign: TextAlign.justify, // JUSTIFICAR O TEXTO
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
