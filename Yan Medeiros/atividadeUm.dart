void main() {
  // Exemplo de uso da função soma
  int resultadoSoma = soma(10, 5);
  print('A soma de 10 e 5 é: $resultadoSoma');

  // Exemplo de uso da função seculo
  int ano = 2024;
  int resultadoSeculo = seculo(ano);
  print('O ano $ano pertence ao século $resultadoSeculo');
}

int soma(int a, int b) {
  return a + b;
}

int seculo(int ano) {
  return (ano + 99) ~/ 100;
}
