void main(){
  Contato contato = Contato('Bruno', '(86) 9 9865-9834');
  print(contato);
}

class Agenda{

}
class Contato{
  String nomeContato;
  String numeroContato;

  Contato(this.nomeContato,this.numeroContato);

  @override String toString() => nomeContato;
}