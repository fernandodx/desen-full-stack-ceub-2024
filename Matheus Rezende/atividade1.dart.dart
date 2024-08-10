
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
  int ano = 2024;
  print('O século do ano $ano é ${obterSeculo(ano)}');
}