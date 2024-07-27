//Escreva uma função que retorne a soma de 2 numeros.
//Escreva uma função que receba um ano (int) e retorne o século daquele ano. (int)

/*
  •Século 20: ano 1901 até o ano 2000;
  •Século 21: ano 2001 até o ano 2100.
*/

void main(){
print(somaNumeros(10, 20));
print(escrevaSeculo(1930, 100));
}

int somaNumeros(valor1, valor2){
  return valor1+valor2;
}

double escrevaSeculo(ano, seculo){
  return ano/seculo;
}