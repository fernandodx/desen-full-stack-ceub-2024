//Escreva uma função que retorne a soma de dois numeros
//Escreva uma função que receba um ano (int) e retorne o século daquele ano. 

void main(){
var numero1 = 32;
var numero2 = 3; 
var ano = 1500; 

var soma = somaDeNumeros(numero1, numero2); 
print('A soma dos numeros ${numero1} e ${numero2} é igual à ${soma}');
print(retornaSeculo(ano));
}

int somaDeNumeros(int numero1, int numero2) {
return numero1 + numero2; 
}

int retornaSeculo(int ano ) {
  return (ano/100).ceil(); 
}
