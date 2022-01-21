import 'package:exercicio_imc/constants/constantes.dart';
import 'package:exercicio_imc/screens/pagina_inicial.dart';
import 'package:exercicio_imc/widgets/botao_vermelho.dart';
import 'package:exercicio_imc/widgets/conteudo_card.dart';
import 'package:exercicio_imc/widgets/conteudo_numerico.dart';
import 'package:flutter/material.dart';

class PaginaResultado extends StatelessWidget {
  const PaginaResultado({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Calculador de IMC')
        ),
          backgroundColor: kCorFundo,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Seu Resultado',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            )
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: kCorAtivada,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Resultado",
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF29d578)
                    ),
                  ),
                  Text(
                    "13.3",
                    style: TextStyle(
                      fontSize: 90.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        "Você tem um peso corporal menor do que o normal. Você pode comer muito mais.",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    
                  ),
                ],
              ),
            ),
          ),     
          Expanded(
            flex: 1,
            child: BotaoVermelho(
              texto: 'Voltar',
              onTap: (){
                Navigator.pop(context);
              }
            ),
          ),
        ],
      ),
    );
  }
}