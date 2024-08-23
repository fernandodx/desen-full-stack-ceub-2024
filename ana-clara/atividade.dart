
void main() {
  int primNumero = 15;
  int segNumero = 10;
  print("A soma dos números: $primNumero + $segNumero = ${somarDoisNumeros(primNumero, segNumero)}");

  int ano = 2100;
  int seculo = anoSeculo(ano);
  print("Ano: ${ano} - Século ${seculo}.");
}
//1- Escreva uma função que retorne a soma de 2 números.
int somarDoisNumeros(int primNumero, int segNumero) {
  return primNumero + segNumero;
}

//2- Escreva uma função que receba um ano (int) e retorne o século daquele ano. (int)
/*
  *Século 20: ano 1901 até o ano 2000.
  *Século 21: ano 2001 até o ano 2100.
  */
int anoSeculo(int ano){ 
  int anoDiv = (ano / 100).floor();
  int anoMod = ano % 100;
  int seculo = anoDiv;

  if(anoMod >= 1) {
    seculo = anoDiv + 1;
  }

  return seculo;
}