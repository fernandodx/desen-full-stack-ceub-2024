int soma(int a, int b) {
  return a + b;
}

int obterSeculo(int ano) {
  int seculo = (ano + 99) ~/ 100;
  print(
      'O século do ano $ano é: $seculo'); // Exibe o século diretamente na função
  return seculo;
}

void main() {
  int resultado = soma(5, 3);
  print('A soma é: $resultado'); // Saída: A soma é: 8

  int ano = 2024;
  int seculo = obterSeculo(ano);
  print('O século do ano $ano é: $seculo'); // Saída: O século do ano 2024 é: 21

  obterSeculo(2024);
  obterSeculo(3024);
  obterSeculo(4024);
  obterSeculo(5024);
  obterSeculo(6024);
  obterSeculo(7024);
  obterSeculo(10024);
  obterSeculo(20024);
  obterSeculo(30024);
  obterSeculo(40024);
  obterSeculo(50024);
  obterSeculo(60024);
  obterSeculo(70024);
}
