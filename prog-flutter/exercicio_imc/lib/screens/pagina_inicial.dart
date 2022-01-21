import 'dart:js';

import 'package:exercicio_imc/constants/constantes.dart';
import 'package:exercicio_imc/screens/pagina_resultado.dart';
import 'package:exercicio_imc/widgets/botao_circular.dart';
import 'package:exercicio_imc/widgets/botao_vermelho.dart';
import 'package:exercicio_imc/widgets/conteudo_card.dart';
import 'package:exercicio_imc/widgets/conteudo_numerico.dart';
import 'package:flutter/material.dart';
import 'package:exercicio_imc/widgets/conteudo_icone.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

// A COLUNA SE REPETE
class _PaginaInicialState extends State<PaginaInicial> {
  int _altura = 211;
  int _peso = 59;
  int _idade = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TELA
      appBar: AppBar(
        title: Center(
          child: Text('Calculador de IMC')
        ),
          backgroundColor: kCorFundo,
      ), // APPBAR
      body: Column(
        // CORPO TEM A COLUNA
        children: [
          // ARRAY
          Expanded(
            child: Row(
              // LINHA
              mainAxisAlignment: MainAxisAlignment
                  .spaceAround, // IGUALMENTE DISTRIBUIDO NA PÁGINA
              children: [
                // ARRAY
                Expanded(
                  child: ConteudoCard(
                    corCard: kCorDesativada,
                    child: ConteudoIcone(
                      // UMA CLASSE PRA CRIAR ICONE COM OS CONTEUDOS
                      data: Icons.male,
                      texto: 'Masculino'
                    ),
                  ),
                ),
                Expanded(
                  child: ConteudoCard(
                    corCard: kCorAtivada,
                    child: ConteudoIcone(
                      data: Icons.female,
                      texto: 'Feminino'
                    )
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ConteudoCard(
              corCard: kCorAtivada,
              child: ConteudoNumerico(
                titulo: 'ALTURA',
                valor: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$_altura',
                      style: kTextDisplayStyle,
                    ),
                    Text('cm')
                  ],
                ),
                acoes: [
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTickMarkColor: kCorCinza, // COR QUE TA INATIVA 
                        activeTickMarkColor: Colors.white,  // COR ATIVA
                        overlayColor: kCorCinzaClaro1,  // COR DO OVERLAY
                        thumbColor: kCorVermelha, // COR DA BOLA
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12), // FORMA DA BOLA
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0) // TAMANHO DO OVERLAY
                      ), 
                      child: Slider(
                        // É O WIDGET LINHA COM A BOLINHA
                        min: 50, // VALOR MINIMO
                        max: 250, // VALOR MAXIMO
                        value: _altura.toDouble(), // POSIÇÃO ATUAL
                        onChanged: (double novoValor) { // VALOR QUE TA NO SLIDER, PRECISANDO CRIAR UM STATE
                          setState(() {
                            _altura = novoValor.round();
                          });
                        }
                      ), 
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ConteudoCard(
                    corCard: kCorAtivada,
                    child: ConteudoNumerico(
                      titulo: 'PESO',
                      valor: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$_peso',
                            style: kTextDisplayStyle,
                          ),
                          Text('Kg'),
                        ],
                      ),
                      acoes: [
                        BotaoCircular(
                          icon: Icons.remove,
                          onPressed: () {
                            setState(() { // PRA AJUSTAR O VALOR
                              _peso--;
                            });
                          },
                        ),
                        BotaoCircular(
                          icon: Icons.add,
                          onPressed: () {
                            setState(() { // PRA AJUSTAR O VALOR
                              _peso++;
                            });
                          }),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ConteudoCard(
                    corCard: kCorAtivada,
                    child: ConteudoNumerico(
                      titulo: 'IDADE',
                      valor: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$_idade',
                            style: kTextDisplayStyle,
                          ),
                          Text('Anos'),
                        ],
                      ),
                      acoes: [
                        BotaoCircular(
                          icon: Icons.remove,
                          onPressed: () {
                            setState(() { // PRA AJUSTAR O VALOR
                              _idade--;
                            });
                          },
                        ),
                        BotaoCircular(
                          icon: Icons.add,
                          onPressed: () {
                          setState(() { // PRA AJUSTAR O VALOR
                            _idade++;
                          });
                        }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BotaoVermelho(
            texto: 'Calcular',
            onTap: () {
            Navigator.push( // NAVEGAÇÃO DE UMA PAGINA PRA OUTRA
              context,
              MaterialPageRoute(
                builder: (context){
                  return PaginaResultado();
                }
              ) // ROTA
            ); // PARA EMPILHAR. DESEMPILHA A TELHA Navigator.of(context).pop()
          }),
        ],
      ),
    );
  }
}
