
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:templateapp/models/API.dart';
import 'package:templateapp/utils/constants.dart';
import 'package:templateapp/widgets/containerInfo.dart';
import 'package:templateapp/widgets/containerState.dart';
import 'package:templateapp/widgets/CreateButton.dart';
import '../widgets/TitleApp.dart';
import 'package:http/http.dart' as http;


class Tracking extends StatefulWidget {
  @override
  State<Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  List<Rastreio> rastreios = List<Rastreio>.empty();//Lista de rastreios
  
  void searchCodigo(){
    String codigo = codeText.text;
    API.getRastreio(codigo).then((response){
      setState(() {
        Iterable lista = json.decode(response.body);
        rastreios = lista.map((model) => Rastreio.fromJson(model)).toList();
        rastreios = rastreios.reversed.toList();
      });
    }); 
  }
  
  // OP047545544BR //codigo que sera rastreado

  //OM967460670BR
  
  TextEditingController codeText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleApp(),
        backgroundColor: kAzulEscuro,
        elevation: 3
      ),
      backgroundColor: kBranco,
      body: Column(
        children: [
          // CRIA O CONTAINER COM OS A IMAGEM E O CÓDIGO DE RASTREIO
          ContainerInfo(texto: codeText.text, caminhoImagem: "../../assets/images/smartphone.png",),
          // CRIA O CAMPO PARA DIGITAR O CÓDIGO
          Container(
            width: 300,
            child: TextField(
              controller: codeText,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Digite o código de rastreio..."
              ),
              style: TextStyle(fontSize: 16, color: kAzulEscuro),
            ),
          ),
          // CRIA O BOTÃO DE PESQUISAR
          CreateButton(title: 'Pesquisar', onPressed: searchCodigo),
          Expanded(
            flex: 5,
            child: ListView.builder(
              itemCount: rastreios.length,
              itemBuilder: (context, index){
                return 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ContainerState(
                    status: rastreios[index].status,
                    data: rastreios[index].data,
                    hora: rastreios[index].hora,
                    origem: rastreios[index].origem,
                    destino: rastreios[index].destino,
                    ),
                );
              },
            ),
          ),
        ],
      ),  
    );
  }
}