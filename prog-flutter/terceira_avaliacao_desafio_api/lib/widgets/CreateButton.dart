
import 'package:flutter/material.dart';
import 'package:templateapp/utils/constants.dart';

class CreateButton extends StatelessWidget {

  final String title;
  final void Function() onPressed;


  const CreateButton({
    Key key,
    this.title,
    this.onPressed,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CRIA O BOTÃO
    return Container(
      width: 300,
      height: 65,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: kAmarelo,
              elevation: 20,
            ),
          child: Text(
            title,
            style: TextStyle(
              color: kBranco,
              fontWeight: FontWeight.bold
            ),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}