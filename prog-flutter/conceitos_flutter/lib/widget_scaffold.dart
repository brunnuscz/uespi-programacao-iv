import 'package:flutter/material.dart';

widgetScaffold() {
  return Scaffold(
    appBar: AppBar(
      title: Text("Flutter - 2022"),
      centerTitle: true, // centraliza o titulo no appBar
    ),
    body: Container( // É onde define o corpo do layout na tela
      color: Colors.white
    ),
    drawer: Container(
      color: Colors.orange
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add_a_photo),
      onPressed: () {print("Pressionado");} // o que vai ocorrer quando pressionar
    ),
    bottomNavigationBar: BottomAppBar( // cria uma barra de navegação na base
      // envolver com container 
      child: Container(
        height: 60.0,
        // envolvendo o icone com uma linha
        child: Row(
          children: [
            Text("Meu bottomAppBar"),
            Icon(Icons.home) // Colocando icone
          ],
        ),
      ),
      color: Colors.tealAccent,
    ),
    persistentFooterButtons: [
      IconButton(icon: Icon(Icons.add_box_outlined),
      onPressed: null)
    ], // Botões que pode incluir no layout
  );
}