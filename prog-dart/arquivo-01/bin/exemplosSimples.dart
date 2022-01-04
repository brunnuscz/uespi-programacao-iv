import 'dart:math';
Random r = Random();

void main(){
  imparOuPar(11);
  numerosAleatorios();
  contadorNumeros();
  listaTeste();
  nomePessoa();
  mapaTeste();
}
imparOuPar(int num){
  if(num%2 == 1){
    print('$num é Impar');
  }else{
    print('$num é Par');
  }
}

numerosAleatorios(){
  int inteiro = 10;
  double real = 2.4;
  num qualquer;
  if(r.nextInt(10)>5){
    qualquer = inteiro;
  }else{
    qualquer = real;
  }
  print(qualquer);
}
contadorNumeros(){
  int num = 0;
  for(num;num<5;num++){
   print('Número $num');
  }
}
nomePessoa(){
  String nome = 'Bruno', sobrenome = 'Cruz';
  String nomeCompleto = nome + ' ' + sobrenome;
  print(nomeCompleto);
}
listaTeste(){
  List lista = [2,5,3,4];
  print(lista);
  for(dynamic item in lista){
   print(item);
  }
  List nomesDePessoas = ["João", "Bruno", "Luis", "Gustavo"];
  print(nomesDePessoas);
}
mapaTeste(){
  Map mapa = 
  {
    'Nome': 'Bruno',
    'Idade': '21',
  };
  print(mapa['Nome']);
  mapa.forEach((chave, valor) {
    print('$chave: $valor');
  });
}