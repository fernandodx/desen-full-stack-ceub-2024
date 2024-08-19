//Escreva uma função que retorne a soma de 2 numeros.
//Escreva uma função que receba um ano (int) e retorne o século daquele ano. (int)

/*
  •Século 20: ano 1901 até o ano 2000;
  •Século 21: ano 2001 até o ano 2100.
*/

// Função que retorna a soma de 2 números
int soma(int a, int b) {
  return a + b;
}

// Função que retorna o século de um determinado ano
int seculo(int ano) {
  if (ano % 100 == 0) {
    return ano ~/ 100;
  } else {
    return (ano ~/ 100) + 1;
  }
}

void main() {
  // Testando a função soma
  int resultadoSoma = soma(5, 10);
  print('A soma de 5 e 10 é: $resultadoSoma'); // Saída: A soma de 5 e 10 é: 15

  // Testando a função seculo
  int ano = 1901;
  int resultadoSeculo = seculo(ano);
  print(
      'O ano $ano pertence ao século $resultadoSeculo'); // Saída: O ano 2023 pertence ao século 21
}
