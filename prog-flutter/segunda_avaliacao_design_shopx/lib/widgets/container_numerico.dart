import 'package:flutter/material.dart';
import 'package:segunda_avaliacao_design_shopx/constants/constantes.dart';

class ContainerNumerico extends StatelessWidget {
  const ContainerNumerico({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( // UM CONTAINER
      margin: const EdgeInsets.only(top: 10.0,right: 20.0,left: 20.0,bottom:10.0), // MARGEM DE CADA LADO
      decoration: BoxDecoration(
        color: kCorPreto, // COR
        borderRadius: BorderRadius.circular(15.0), // CURVA DOS CANTOS
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0), // PADDING EM TODAS OS LADOS
        child: Row(  // LINHA
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // ESPAÇAMENTO
          children: [ // ARRAY
            Column( // COLUNA
              crossAxisAlignment: CrossAxisAlignment.start, // NO INICIO
              children: [ // ARRAY
                Builder( // SÓ PRA SUMIR AS LINHAS AZUIS
                  builder: (context) {
                    return const Text( // TEXTO
                      'Balance',
                      style: kTextStyleTextoCinza // ESTILO
                    );
                  }
                ),
                const SizedBox( // UM ESPAÇAMENTO ENTRE OS ITENS DA COLUNA
                  height: 25.0
                ),
                Builder(
                  builder: (context) {
                    return const Text( 
                      '\$280.65',
                      style: kTextStyleTextoNumero,
                    );
                  }
                ),
              ]
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end, // NO FINAL
              children: [ 
                Builder(
                  builder: (context) {
                    return const Text(
                      'VISA',
                      style: kTextStyleTextoNumero,
                    );
                  }
                ),
                const SizedBox(
                  height: 25.0
                ),
                const Text(
                  '- - - 3028',
                  style: kTextStyleTextoCinza
                ),
              ]
            ),                      
          ],
        ),
      ),
    );
  }
}
