void main(){
  Cliente cliente1 = Cliente('Bruno');
  print(cliente1);
}
class Cliente{
  String nomeCliente;
  Pedido pedido1 = Pedido();

  Cliente(this.nomeCliente);
  @override String toString() => nomeCliente;
}
class Produto{
  String nomeProduto;
  double precoProduto;
  int quantidadeProdutoEstoque;

  Produto(this.nomeProduto, this.precoProduto, this.quantidadeProdutoEstoque);
}
class Pedido{
  List itensProdutos = ['Arroz','Sabão', 'Creme'];
  List itensQuantidade = [2,3,1];
}