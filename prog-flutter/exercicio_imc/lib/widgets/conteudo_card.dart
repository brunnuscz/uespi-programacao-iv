import 'package:exercicio_imc/constants/constantes.dart';
import 'package:flutter/material.dart';

class ConteudoCard extends StatelessWidget {
  final Color corCard;
  final Widget child;

  const ConteudoCard({
    Key? key,
    required this.corCard,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: corCard,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}
