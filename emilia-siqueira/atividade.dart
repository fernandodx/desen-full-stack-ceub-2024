

import 'dart:ffi';

void main() {
//Escreva uma função que receba a soma de 2 números.
//Escreva uma função que receba um ano (int) e retorne o século daquele ano. (int)

/*
  •Século 20: ano 1901 até o ano 2000;
  •Século 21: ano 2001 até o ano 2100.
*/

  print (adicaoDoisNumeros(5.47, 6.19).toString());

  print ("O Século correspondente é o " + informaSeculo(2024).toString());
}


//Funções
double adicaoDoisNumeros (double valor1, double valor2) {

   return valor1 + valor2;
}

int informaSeculo(ano){

if(ano%100 == 0){

	return ((ano/100).floor() as int);

}else{
}
	return ((1 + (ano/100)).floor() as int);

}




