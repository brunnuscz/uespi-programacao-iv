void principal(){
  Carro carro = Carro('BMW'); // ESTANCIANDO UMA CLASSE
  print(carro); 
}
// CLASSE
class Carro {
  String nomeCarro;
  // CONSTRUTOR
  Carro(this.nomeCarro);
  // METODO TO STRING - BASICAMENTE CONVERTE O VERBO PARA UMA STRING
  @override String toString() => nomeCarro;
}
