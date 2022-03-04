import 'package:flutter/material.dart';
import 'package:templateapp/Screens/CepPage.dart';
import 'package:templateapp/Screens/TrackingPage.dart';
import 'package:templateapp/utils/constants.dart';
import 'package:templateapp/widgets/CreateButton.dart';
import 'package:templateapp/widgets/TitleApp.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleApp(),
        backgroundColor: kAzulEscuro,
        elevation: 2
      ),
      backgroundColor: kAzulEscuro,
      body: Center(
        // COLUNA QUE CONTÉM TUDO
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TÍTULO DA TELA INCICIAL
            Container(
              margin:  const EdgeInsets.only(bottom: 20.0),
              width: 288,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'O que você desesja consultar?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kBranco,
                    fontSize: 23, 
                    fontWeight: FontWeight.w800, 
                    fontFamily: 'Poppins'
                  ),
                ),
              ),
            ),
            // COLUNA QUE CONTÉM OS DOIS BOTÕES
            Column(
              children: [
                CreateButton(
                  title: 'Consultar encomenda',
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return Tracking();
                        }
                      )
                    );
                  },
                ),
                CreateButton(
                  title: 'Consultar CEP',
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return Cep();
                        }
                      ),
                    );
                  },
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}