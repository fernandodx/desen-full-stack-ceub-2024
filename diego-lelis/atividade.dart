import "dart:io";

void main() {
  // Teste somaDeDoisNumeros
  print(somaDeDoisNumeros(10, 15));

  // Teste anoParaSeculo
  int ano = 2024;
  int seculo = anoParaSeculo(ano);
  print("O século do ano ${ano} é ${seculo}.");
}

// 1 - Escreva uma função que retorne a soma de 2 números.
double somaDeDoisNumeros(double primeiroNumero, double segundoNumero) {
  return primeiroNumero + segundoNumero;
}

// 2 - Escreva uma função que receba um ano(int) e retorne o século daquele ano(int.)
int anoParaSeculo(int ano) {
  int anoDiv = (ano / 100).floor();
  int anoMod = ano % 100;
  int seculo = anoDiv;

  if (anoMod >= 1) {
    seculo = anoDiv + 1;
  }

  return seculo;
}
