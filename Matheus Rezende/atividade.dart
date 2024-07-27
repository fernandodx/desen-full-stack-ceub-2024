//Escreva uma função que retorne a soma de 2 numeros.
//Escreva uma função que receba um ano (int) e retorne o século daquele ano. (int)

// Função para somar dois números
// Função para somar dois números
// Função para somar dois números
// Função para somar dois números
// Função para somar dois números

// Função que retorna a soma de dois números
int somar(int a, int b) {
  return a + b;
}

// Função que recebe um ano e retorna o século daquele ano
int obterSeculo(int ano) {
  if (ano <= 0) {
    throw ArgumentError('O ano deve ser um número positivo.');
  }
  // Calcula o século com base no ano
  return (ano + 99) ~/ 100;
}

void main() {
  // Testando a função somar
  int numero1 = 10;
  int numero2 = 20;
  print('A soma de $numero1 e $numero2 é ${somar(numero1, numero2)}');

  // Testando a função obterSeculo
  int ano = 1901;
  print('O século do ano $ano é ${obterSeculo(ano)}');
}

/*
int somarDoisNumeros(int a, int b) {
  return a + b;
}

// Função para determinar o século de um ano
int obterSeculo(int ano) {
  if (ano <= 0) {
    throw ArgumentError("O ano deve ser um número positivo.");
  }
  return ((ano - 1) ~/ 100) + 1;
}



  •Século 20: ano 1901 até o ano 2000;
  •Século 21: ano 2001 até o ano 2100.
*/
