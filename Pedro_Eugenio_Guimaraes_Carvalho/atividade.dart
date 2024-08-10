//Escreva uma função que retorne a soma de 2 numeros
double Somar(double num1, double num2) {
  return num1 + num2;
}

//Escreva uma função que receba um ano (int) e retorne o século daquele ano
int DeterminarSeculo(int ano) {
  double seculo;
  if (ano % 100 == 0) {
    seculo = ano / 100;
  } else {
    seculo = (ano ~/ 100) + 1;
  }
  return seculo.round();
}

void main() {
  print("A soma dos números 30 e 40 é: ");
  print(Somar(30, 40));
  print("O século do ano 1560 é: ");
  print(DeterminarSeculo(1560));
  print("O século do ano 1000 é: ");
  print(DeterminarSeculo(1000));
  print("O século do ano 1001 é: ");
  print(DeterminarSeculo(1001));
  print("O século do ano 350 é: ");
  print(DeterminarSeculo(350));
}
