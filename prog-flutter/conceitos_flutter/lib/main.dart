import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Definindo MaterialApp permite usar o widget Scaffold
    return MaterialApp(
      // remove a palavrinha debug do canto superior direito
      debugShowCheckedModeBanner: false,
      title: "Aula 3",
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: WidgetsBasicos() // um metodo widget que retorna um scaffold
    );
  }
}
class WidgetsBasicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Básicos"),
      ),
      body: Container( // as telas das aplicações
        width: double.infinity,
        // height: 500, // altura da linha
        color: Colors.yellow, // cor da linha
        child: widgetImage()
      )
    );
  }

  widgetImage() {

  } 
}