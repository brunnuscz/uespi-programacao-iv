import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Execício Layout",
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: WidgetsBasicos()
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
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: widgetImage()
      )
    );
  }

  widgetImage() {} 
}
