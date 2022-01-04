import 'package:conceitos_flutter/widget_raisedbutton.dart';
import 'package:flutter/material.dart';

widgetRowColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center, // ela define onde widgets filhos serão posicionados nos eixos cruzados
      mainAxisAlignment: MainAxisAlignment.center, // posição dos filhos
      // mainAxisSize: MainAxisSize.min, // define o tamanho do eixo principal
      children: [ // definir um array de filhos
        widgetButton(),
        widgetButton(),
        widgetButton()
      ],
    );
  } 