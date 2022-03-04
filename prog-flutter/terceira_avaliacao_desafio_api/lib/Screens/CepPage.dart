import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:templateapp/utils/constants.dart';
import 'package:templateapp/widgets/CreateButton.dart';
import 'package:templateapp/widgets/containerInfo.dart';
import 'package:http/http.dart' as http;
import 'package:templateapp/widgets/textInfo.dart';
import '../widgets/TitleApp.dart';

class Cep extends StatefulWidget {
  @override
  State<Cep> createState() => _CepState();
}

class _CepState extends State<Cep> {
  Map<String, dynamic> dados;
  
   
  // INICIALIZANDO AS VARIAVEIS 
  String logradouro  = " ";
  String complemento = " ";
  String bairro      = " ";
  String localidade  = " ";
  String uf          = " ";
  String ibge        = " ";
  String gia         = " ";
  String ddd         = " ";
  String siafi       = " ";
  
  TextEditingController textCep = TextEditingController();

  void searchCep() async{
    String cep = textCep.text;
    Uri url = Uri(
      scheme: 'https',
      host: 'viacep.com.br',
      path: '/ws/$cep/json/'
    );
    
    http.Response response;

    response = await http.get(url);

    dados = json.decode(response.body);
    
    // ADICIONANDO OS DADOS NAS VARIAVEIS
    setState(() {
      logradouro  = dados["logradouro"];
      complemento = dados["complemento"];
      bairro      = dados["bairro"];
      localidade  = dados["localidade"];
      uf          = dados["uf"];
      ibge        = dados["ibge"];
      gia         = dados["gia"];
      ddd         = dados["ddd"];
      siafi       = dados["siafi"];
    });
  }
  
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
          // CRIA O CONTAINER COM OS A IMAGEM E O NÚMERO DO CEP
          ContainerInfo(texto: textCep.text, caminhoImagem: "../../assets/images/zip-code.png"),
          // CRIA O CAMPO PARA DIGITAR O CEP
          Container(
            width: 300,
            child: TextField(
              controller: textCep,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Digite um CEP..."
              ),
              style: TextStyle(fontSize: 16, color: kAzulEscuro),
            ),
          ),
          // CRIA O BOTÃO DE PESQUISAR
          CreateButton(title: 'Pesquisar', onPressed: searchCep),
          // CRIA O A INFORMAÇÃO DE LOCAL
          Padding(
            padding: const EdgeInsets.only(top:30.0,left:30.0,bottom:5.0),
            child: dados!=null?Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FaIcon(
                  FontAwesomeIcons.mapMarked,
                  size: 20.0,
                  color: kAzulEscuro
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Text('$localidade',style: kTextStyleInfoDadoCep),
                )
              ],
            ):Text(''),
          ),
          // CRIA O CONTAINER ONDE TEM AS INFORMAÇÕES DO CEP
           
           dados!=null? Container(
            color: kBranco,
            margin: EdgeInsets.all(20.0),
            child:  Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child:
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // CRIA OS TEXTOS DE INFORMAÇÕES
                          TextInfo(textInfo: 'Logradouro: ' ,textDado: '$logradouro'),
                          TextInfo(textInfo: 'Complemento: ',textDado: '$complemento'),
                          TextInfo(textInfo: 'Bairro: '     ,textDado: '$bairro'),
                          TextInfo(textInfo: 'UF: '         ,textDado: '$uf'),
                          TextInfo(textInfo: 'IBGE: '       ,textDado: '$ibge'),
                          TextInfo(textInfo: 'GIA: '        ,textDado: '$gia'),
                          TextInfo(textInfo: 'DDD: '        ,textDado: '$ddd'),
                          TextInfo(textInfo: 'SIAFI: '      ,textDado: '$siafi'),
                        ]
                      ),
                    ),
                  
                ),
              ),       
            ):Text('')
          
        ]
      ),
    );
  }
}