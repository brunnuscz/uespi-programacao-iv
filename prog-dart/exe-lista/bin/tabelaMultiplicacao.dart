void main(){
  int soma;
  int i;
  int j = 1;

  for(i=1;i<11;i++){
    for(j=1;j<11;j++){
      soma = i * j;
      print('$i x $j = $soma');
    }
    print('__________\n');
  }
}