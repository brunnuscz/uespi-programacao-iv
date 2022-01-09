import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Container é como se fosse uma casca
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove a marca debug
      title: ("Aula 22/12/2021"), // titulo
      home: Scaffold( // O scaffold é uma tela
        backgroundColor: Colors.cyan, // Cor de fundo
        body: SafeArea( // O SafeArea vai determina onde é que começa a tela do celula, cria uma barra, pra não sob algumas coisa do celular
          child: Center( // Center que é filho do SafeArea
            child: Container( // container que é filho do Center
              width: 250, // largura do container
              height: 250, // altura do container
              color: Colors.amber, // cor do container
                child: Column( // criando um texto que é filho do container
                  mainAxisAlignment: MainAxisAlignment.spaceAround,// alinhamento no eixo principal de cima pra baixo na coluna
                  //crossAxisAlignment: CrossAxisAlignment.end, // alinhamento na horizontal
                  children: [
                    //Text (
                    //  "1ª Mensagem", // nome do texto
                    //  textAlign: TextAlign.center, // alinhado
                    //  style: TextStyle( // estilo do texto
                    //    fontSize: 15.0 // tamanho do texto
                    //  ),
                    //),
                    // Spacer(), // preenche espaço em branco
                    Container( // cria um retangulo que pode dimensionar
                      height: 50,
                      width: 50,
                      color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Text(
                            "1",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white
                            ) 
                          ),
                        ],
                      )
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:
                        [
                          Text(
                            "2",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white
                            ) 
                          ),
                        ],
                      )
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.green,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:
                        [
                          Text(
                            "3",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white
                            ) 
                          ),
                        ],
                      )
                    ),
                  ],
                ),
            ),
          ),
        ),
      ),
    );
  }
}