
// EXEMPLO DE UMA CONTA

void main(){
  Cliente cliente = Cliente('Bruno');
  Conta conta = Conta(cliente, 1000.00);

  print(conta);
}

class Cliente{
  String nome;

  Cliente(this.nome);
  @override String toString() => nome;
}

class Conta{
  Cliente cliente;
  double saldo;

  Conta(this.cliente, this.saldo);
  @override String toString() => 'Cliente: $cliente\nSaldo: $saldo'; // o $ converte para string
}