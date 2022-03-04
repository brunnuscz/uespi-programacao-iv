import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:templateapp/utils/constants.dart';

class ContainerState extends StatelessWidget {
  
  final String status;
  final String data;
 final String hora;
 final String origem;
 final String destino;



  const ContainerState({ Key key,
    this.status,
    this.data,
    this.hora,
    this.origem,
    this.destino
  }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBranco,
      margin: EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    
                    status.contains('trânsito')?FaIcon(
                      FontAwesomeIcons.truck,
                      size: 40.0,
                      color: kAzulEscuro
                    ): status.contains('entregue')?FaIcon(
                      FontAwesomeIcons.checkCircle,
                      size: 40.0,
                      color: kAzulEscuro
                    ): status.contains('saiu')?FaIcon(
                      FontAwesomeIcons.dolly,
                      size: 40.0,
                      color: kAzulEscuro
                    ):status.contains('postado')?FaIcon(
                      FontAwesomeIcons.planeDeparture,
                      size: 40.0,
                      color: kAzulEscuro
                    ):status.contains('recebido')?FaIcon(
                      FontAwesomeIcons.handHolding,
                      size: 40.0,
                      color: kAzulEscuro
                    ):Text('')
                  ],
                ),
              ),
              Expanded(
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${status}'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Poppins',
                        color: kAzulEscuro,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                     Text(
                      '$data',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Poppins',
                        color: kCinzaClaro,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '$hora',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'Poppins',
                        color: kCinzaClaro,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    
                    origem != null?Text(
                      'De: $origem',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Poppins',
                        color: kCinzaClaro,
                        fontWeight: FontWeight.w800,
                      ),
                    ):Text(''),
                     destino != null?
                     Container(
                       child: Column(
                         children: [
                           Text(
                            'Para: $destino',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Poppins',
                              color: kCinzaClaro,
                              fontWeight: FontWeight.w800,
                            ),
                    ),
                         ],
                       ),
                     ):Text(''),
                  ]
                ),
              ),
            ]
          ),
        ),    
      ),
    );
  }
}