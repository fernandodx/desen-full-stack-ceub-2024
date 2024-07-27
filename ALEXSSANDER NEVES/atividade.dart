// Escreva uma função que retorne a soma de 2 números.
int soma(int a, int b) {
  return a + b;
}

void main() {
  int numero1 = 5;
  int numero2 = 7;
  int resultado = soma(numero1, numero2);
  print('A soma de $numero1 e $numero2 é $resultado');

// Escreva uma função que receba um ano (int) e retorne o século daquele ano (int).
/*
  *Século 20: ano 1901 até o ano 2000;
  *Século 21: ano 2001 até o ano 2100.
*/
  int ano = 1502;
  int seculo = calcularSeculo(ano);
  print('O ano $ano pertence ao século $seculo');
}

int calcularSeculo(int ano) {
  return (ano - 1) ~/ 100 + 1;
}
