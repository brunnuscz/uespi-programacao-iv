/*
É chamado raiz de uma equação o
valor que suas variaveis assumem de modo
que essa equação seja válida perante a igualdade.
Equação do 1º Grau => ax + b = 0 Possui 1 raiz
Exemplo
3x + 5 = 20
3x = 20 - 5
3x = 15
x = 15/3
x = 5 <= raiz
Equação do 2º Grau => ax^2 + bx + c = 0 Possui 2 raizes
Exemplo
x^2 - 5x + 6 = 0
Aplica a fómula de Bháskara (x = -b+ou-Raiz de b^2 - 4*a*c/2*a)
x = (-(-5)+ou-Raiz de (-5)^2-4*1*6)/2*1
x = (5+ou-Raiz de 1)/2 => x1= 3 x2 = 2
*/

import 'dart:math';

void main(){
  double a = 1;
  double b = 5;
  double c = 6;
  double delta;
  double raiz1;
  double raiz2;

  delta = pow(b,2) - (4*a*c);

  if (delta < 0){
    print('A equação não tem raízes');
  }else if(delta == 0){
    raiz1 = (-b)/(2*a);
    print('A única raiz da equação é: $raiz1');
  }else{
    raiz1 = (b + sqrt(delta))/(2*a);
    raiz2 = (b - sqrt(delta))/(2*a);
    print('As raizes da equação serão: $raiz1 e $raiz2');
  }
}