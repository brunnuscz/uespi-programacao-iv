void main(){
  String nome = 'Papel Higienico';
  double preco = 10.00;
  int quantidade = 51;
  double valor = 0;
  
  if(quantidade <= 10){
    valor = preco;
    print('Nome Produto: $nome\nQuantidade de Produtos: $quantidade\nPreço do Produto: $preco\nTotal a pagar sem desconto: $valor');
  }else if(quantidade > 10 && quantidade < 21){
    valor = preco-(preco*0.10);
    print('Nome Produto: $nome\nQuantidade de Produtos: $quantidade\nPreço do Produto: $preco\nTotal a pagar com 10% desconto: $valor');
  }else if(quantidade > 20 && quantidade < 51){
    valor = preco-(preco*0.20);
    print('Nome Produto: $nome\nQuantidade de Produtos: $quantidade\nPreço do Produto: $preco\nTotal a pagar com 20% desconto: $valor');
  }else if(quantidade > 50){
    valor = preco-(preco*0.25);
    print('Nome Produto: $nome\nQuantidade de Produtos: $quantidade\nPreço do Produto: $preco\nTotal a pagar com 25% desconto: $valor');
  }

}