import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // RETIRA A MARCA DO debug
      title: 'Exercício Quizz', // TITULO
      theme: ThemeData( // TEMA
        primarySwatch: Colors.blueGrey, // ESTILO
        textTheme: const TextTheme( // TEMA DE TEXTO
          bodyText2: TextStyle( // ESTILO DO TEXTO
            color: Colors.white, // COR DO TEXTO
            fontSize: 32.0, // TAMANHO DA FONTE
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// CLASSE PRA PERGUNTA
class Pergunta{
  // VARIAVEIS
  String pergunta;
  bool resposta;
  // CONSTRUTOR
  Pergunta(
    this.pergunta,
    this.resposta
  );
}

class _MyHomePageState extends State<MyHomePage> {
  int indexPerguntaAtual = 0; // O INDEX DA PERGUNTA NO VETOR
  // VETOR DE PERGUNTAS texto / valor
  List<Pergunta> listaPerguntas = [
    Pergunta('Estudar é fácil e simples?', false),
    Pergunta('Piauí fica na região nordeste?', true),
    Pergunta('O melhor time é o Vasco?', false),
    Pergunta('A UESPI é a melhor universidade do Mundo?', false),
    Pergunta('O Brasil é um país?', true),
    Pergunta('Flutter é legal?', true),
  ];
  // VETOR DE RESULTADOS
  List<Icon> listaResultados = [];
  // METODO PRA CHECAR A RESPOSTA
  void checarRespostaUsuario(Pergunta pergunta, bool respostaDoUsuario){
    
    setState(() {
      if(pergunta.resposta == respostaDoUsuario){ // SE RESPOSTA É IGUAL A REPOSTA DO USUARIO
        listaResultados.add( // ADICIONANDO ICONE NA LISTA
          const Icon( // CRIANDO O ICONE
            Icons.check, // ICONE
            color: Colors.green, // COR DO ICONE
          )
        );
      }else{
        listaResultados.add( // ADICIONANDO ICONE NA LISTA
          const Icon( // CRIANDO O ICONE
            Icons.close, // ICONE
            color: Colors.red, // COR DO ICONE
          )
        );
      }
    
      if(indexPerguntaAtual == listaPerguntas.length-1){ // TEM QUE SER -1 PQ TEM QUE IR ATÉ 5
        indexPerguntaAtual = 0; // REINICIA AS PERGUNTAS
        listaResultados = []; // ALEM DE ZERAR O INDEX, TEM QUE ZERAR O VETOR
        
      }else{
        indexPerguntaAtual++; // INCREMENTA A PERGUNTA ATUAL E PASSA PRA PROXIMA PERGUNTA
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea( // NÃO FICAR POR CIMA DE ALGUNS COISAS
      child: Scaffold( // A TELA
        backgroundColor: Colors.grey.shade900, // COR DO FUNDO
        body: Column( // TUDO DENTRO DE UMA COLUNA DO BODY
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch, // PEGA O FILHO E ENLARGUECE, PREENCHE TODO O CANTO
          children: [ // ARRAY
            // TEXTO DE PERGUNTA
            Expanded(
              flex: 5,
              child: Center( // CENTRO
                child: Text( // O TEXTO NÃO PODE SER ESTATICO TEM QUE SER A PERGUNTA ATUAL
                  listaPerguntas[indexPerguntaAtual].pergunta, // LISTA DE PERGUNTAS COM O INDEX ATUAL E O TEXTO PERGUNTA
                  textAlign: TextAlign.center,  // ALINHADO NO CENTRO
                ),
              ),
            ),
            Expanded( // BOTÃO VERDADEIRO
              child: BotaoQuizz( // CHAMANDO A FUNÇÃO QUE CRIA O BOTÃO E PASSANDO O TEXTO E COR
                text: 'Verdadeiro', 
                backgroundColor: Colors.green,
                onPressed: (){
                  checarRespostaUsuario(listaPerguntas[indexPerguntaAtual], true);
                }
              ) 
            ),
            Expanded( // BOTÃO FALSO
              child: BotaoQuizz( // CHAMANDO A FUNÇÃO QUE CRIA O BOTÃO E PASSANDO O TEXTO E COR
                text: 'Falso',
                backgroundColor: Colors.red,
                onPressed: (){
                  checarRespostaUsuario(listaPerguntas[indexPerguntaAtual], false); // CHAMA A FUNÇÃO QUE VERIFICA A RESPOSTA
                }
              ) 
            ),
            // LINHA COM AS REPOSTAS
            Row(
              // ARRAY
              children: listaResultados, // ARRAY DE ICONES
            )
          ],
        )
      ),
    );
  }
}

// AO INVES DE REPETIR CODIGO DENTRO DO ARRAY, VAMOS CRIAR UMA CLASSE PRA CRIAR BOTÃO
class BotaoQuizz extends StatelessWidget {
  
  final String text;
  final Color backgroundColor;
  var onPressed;
  
  BotaoQuizz({
    Key? key, 
    required this.text, 
    required this.backgroundColor,
    required this.onPressed
  }) : super(key: key); // TEM QUE SER INICIALIZADO, COLOCANDO OS PARAMETROS OBRIGATORIOS required

  @override
  Widget build(BuildContext context) {
    return Padding( // PADDING NO CIRCULANDO DO TextButton
      padding: const EdgeInsets.all(15.0), // TAMANHO DO PADDING
      child: TextButton( // BOTÃO FALSO
        onPressed: onPressed, // PASSAR UMA FUNÇÃO PRO QUE FAZER QUANDO PRESSIONAR
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0
          ),
        ),
      ),
    );
  }
}

