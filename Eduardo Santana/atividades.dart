void main() {
  print(seculo(1900));
  print(seculo(1901));
  print(seculo(2000));
  print(seculo(2001));
  print(seculo(467));
}

// Escreva uma funcao que retorne a soma de dois numeros

int soma(int a, int b) {
  return a + b;
}
// Escreva uma função que receba um ano (int) e retorne o século daquele ano. (int)
int seculo(int ano) {
  int seculo = (ano / 100).ceil();
  return seculo;
}



// Escreva uma funcao que receba um ano (int) e retorne o seculo daquele ano em algarismos romanos -> exemplo 1989 -> XX outro exemplo 2001 -> XXI

String seculoRomano(int ano) {
  int seculo = (ano / 100).ceil();
  String algarismosRomanos = '';

  if (seculo <= 0) {
    return 'Invalid year';
  }

  while (seculo > 0) {
    if (seculo >= 1000) {
      algarismosRomanos += 'M';
      seculo -= 1000;
    } else if (seculo >= 900) {
      algarismosRomanos += 'CM';
      seculo -= 900;
    } else if (seculo >= 500) {
      algarismosRomanos += 'D';
      seculo -= 500;
    } else if (seculo >= 400) {
      algarismosRomanos += 'CD';
      seculo -= 400;
    } else if (seculo >= 100) {
      algarismosRomanos += 'C';
      seculo -= 100;
    } else if (seculo >= 90) {
      algarismosRomanos += 'XC';
      seculo -= 90;
    } else if (seculo >= 50) {
      algarismosRomanos += 'L';
      seculo -= 50;
    } else if (seculo >= 40) {
      algarismosRomanos += 'XL';
      seculo -= 40;
    } else if (seculo >= 10) {
      algarismosRomanos += 'X';
      seculo -= 10;
    } else if (seculo >= 9) {
      algarismosRomanos += 'IX';
      seculo -= 9;
    } else if (seculo >= 5) {
      algarismosRomanos += 'V';
      seculo -= 5;
    } else if (seculo >= 4) {
      algarismosRomanos += 'IV';
      seculo -= 4;
    } else if (seculo >= 1) {
      algarismosRomanos += 'I';
      seculo -= 1;
    }
  }

  return algarismosRomanos;
}
