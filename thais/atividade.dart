//1. Escreva uma função que retorne a soma de 2 numeros
//2.Escreva uma função que receba um ano (int) e retorne o século daquele ano. (int)

import 'dart:ffi';

void main(){

  int soma = calculaSoma(12, 15);
  print("Escreva uma função que retorne a soma de 2 numeros ");
  print("Soma: $soma");

  print("Escreva uma função que receba um ano (int) e retorne o século daquele ano. (int)");
  print("1887 -> século:  ${buscaSeculo(1887)}");
  print("1900 -> século:  ${buscaSeculo(1900)}");
  print("1901 -> século:  ${buscaSeculo(1901)}");

}
int calculaSoma(int valor1, int valor2){
  int soma = valor1 + valor2;
  return soma;

}


int buscaSeculo(int ano){

  var seculo = ano/100;

  return seculo.ceil();

  
}