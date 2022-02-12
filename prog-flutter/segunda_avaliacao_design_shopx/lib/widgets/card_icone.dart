import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardIcone extends StatelessWidget {
  final Color corDoCard;
  final Color corDoIcone;
  final Color corDoTexto;
  final String texto;
  final IconData icone;

  const CardIcone({
    Key? key,
    required this.corDoCard,
    required this.corDoIcone,
    required this.texto,
    required this.icone,
    required this.corDoTexto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( // UM CONTAINER
      margin: const EdgeInsets.only(top:5.0,right:7.0,left:7.0,bottom:5.0), // MARGEM
      decoration: BoxDecoration(
        color: corDoCard, // COR
        borderRadius: BorderRadius.circular(15.0), // CURVA DOS CANTOS
      ),
      width: 75,
      height: 95,
      child: Padding(
        padding: const EdgeInsets.all(10.0), // PADDING EM TODAS OS LADOS
        child: Column(  // LINHA
          children: [ // ARRAY
            FaIcon(
              icone,
              color: corDoIcone,
              size: 30.0
            ),
            const SizedBox( // UM ESPAÇAMENTO ENTRE OS ITENS DA COLUNA
              height: 20.0
            ),
           Text(
            texto,
            style: TextStyle(
              color: corDoTexto, 
              fontSize: 10.0, 
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w600
            ),
           ),
          ]
        ),
      ),
    );
  }
}
