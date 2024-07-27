//Escreva uma função que receba um ano (int) e retorne o século daquele ano. (int)

/* 

  - 
  - 

 */

void main() {
  int ano = 2001;

  int saberSeculo(int ano) {
    return (ano / 100).ceil();
  }

  print(saberSeculo(ano));
}
