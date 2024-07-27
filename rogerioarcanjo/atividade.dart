//Escreve uma função que retorna a soma de 2 numeros.
//Escreva uma função que receba um ano (int) e retorne o século daquele ano. (int)

int somar(int numero1, int numero2) {
  return numero1 + numero2;
}

int obterSeculo(int ano) {
  // Verifica se o ano é menor ou igual a 0 (não é um ano válido)
  if (ano <= 0) {
    throw ArgumentError('O ano deve ser um valor positivo.');
  }

  /* Calcula o século
  Essa fórmula garante que anos como 1901 a 2000 sejam corretamente mapeados para o século 20, enquanto anos como 2001 a 2100 sejam mapeados para o século 21.
  O operador ~/ é usado para divisão inteira, descartando qualquer parte decimal.
  O + 99 é utilizado para garantir que anos no final de um século sejam arredondados para cima
  */

  return (ano + 99) ~/ 100;
}

void main() {
  int resultado = somar(5, 3);
  print('A soma é: $resultado'); // Saída: A soma é: 8

  int ano = 2020;
  int sec = obterSeculo(ano);
  print('O século do ano $ano é: $sec');
}

/*
  Seculo 20: ano 1901 até o ano 2000;
  Seculo 21: ano 2001 até o ano 2100;
*/

