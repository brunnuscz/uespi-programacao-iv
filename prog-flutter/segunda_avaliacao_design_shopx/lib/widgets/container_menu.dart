import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:segunda_avaliacao_design_shopx/constants/constantes.dart';

class ContainerMenu extends StatelessWidget {
  const ContainerMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0), // MARGEM DE CADA LADO
      decoration: BoxDecoration(
        color: Colors.white, // COR
        borderRadius: BorderRadius.circular(30.0), // CURVA DOS CANTOS
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:25.0, bottom:25.0),
        child: Row(  // LINHA
          mainAxisAlignment: MainAxisAlignment.spaceAround, // ESPAÇAMENTO
          children: [ // ARRAY
            Column( // COLUNA
              children: [ // ARRAY
                Builder(
                  builder: (context) {
                    return const FaIcon(
                      FontAwesomeIcons.home,
                      color: kCorPreto,
                      size: 30.0,
                    );
                  }
                ),
              ]
            ),
            Column( // COLUNA
              children: [ // ARRAY
                Builder(
                  builder: (context) {
                    return const FaIcon(
                      FontAwesomeIcons.thLarge,
                      color: kCorCinza2,
                      size: 30.0,
                    );
                  }
                ),
              ]
            ),
            Column( // COLUNA
              children: [ // ARRAY
                Builder(
                  builder: (context) {
                    return const FaIcon(
                      FontAwesomeIcons.shoppingBag,
                      color: kCorCinza2,
                      size: 30.0,
                    );
                  }
                )
              ]
            ),
            Column(
              children: [
                Builder(
                  builder: (context) {
                    return const CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage('../images/bruno.jpg'),
                    );
                  }
                ),
              ],
            ),                
          ],
        ),
      ),
    );
  }
}
