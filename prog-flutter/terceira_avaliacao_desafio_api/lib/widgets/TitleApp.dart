import 'package:flutter/material.dart';
import 'package:templateapp/utils/constants.dart';

class TitleApp extends StatelessWidget {
  const TitleApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // LINHA QUE TEM O NOME DO APLICATIVO 
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'UESPI ', 
          style: TextStyle(
            color: kBranco,
            fontFamily: 'Poppins', 
            fontWeight: FontWeight.w900,
            fontSize: 24,
          ),
        ),
        Text(
          'TRACKER',
          style: TextStyle(
            color: kAmarelo,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w900,
            fontSize: 24
          ),
        ),
      ],
    );
  }
}