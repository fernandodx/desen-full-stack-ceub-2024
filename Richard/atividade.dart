//Escreva uma função que retorne a soma de 2 numeros.
void main() {
  int num1 = 2;
  int num2 = 4;
  int ano = 1998;

  soma(num1, num2);
  seculo(ano);
}

void soma(int a, int b) {
  print(a + b);
}
//Escreva uma função que receba um ano (int) e retorne o século daquele ano. (int)

void seculo(int ano) {
  int seculo = (ano / 100).ceil();
  print(seculo);
}
