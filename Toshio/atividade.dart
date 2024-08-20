void main() {
  print("A Soma é ${soma(1, 2)}");

  print(seculo(1999));
  print(seculo(2000));
  print(seculo(2002));
}

int soma(int numero1, int numero2) {
  return numero1 + numero2;
}

String seculo(int ano) {
  return "O Século é ${((ano - 1) / 100 + 1).toInt()}";
}



//Escreva uma função que retorne a soma de 2 numeros.
//Escreva uma função que receba um ano (int) e retorne o século daquele ano. (int)

/*
  •Século 20: ano 1901 até o ano 2000;
  •Século 21: ano 2001 até o ano 2100.
*/