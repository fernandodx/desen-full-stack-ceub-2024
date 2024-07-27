// Escreva um função que retorne a soma de dois numeros.
// Escreva uma função que receba um ano (int) e retorne o seculo daquele ano. (int)

void main() {
  print(obterSeculo(1998));
}

void somaDoisNumeros(int num1, int num2) {
  print("A soma de ${num1} e ${num2} é ${num1 + num2}");
}

String obterSeculo(int ano) {
  if (ano > 0 && ano <= 100) {
    return 'Século I';
  } else if (ano > 100 && ano <= 200) {
    return 'Século II';
  } else if (ano > 200 && ano <= 300) {
    return 'Século III';
  } else if (ano > 300 && ano <= 400) {
    return 'Século IV';
  } else if (ano > 400 && ano <= 500) {
    return 'Século V';
  } else if (ano > 500 && ano <= 600) {
    return 'Século VI';
  } else if (ano > 600 && ano <= 700) {
    return 'Século VII';
  } else if (ano > 700 && ano <= 800) {
    return 'Século VIII';
  } else if (ano > 800 && ano <= 900) {
    return 'Século IX';
  } else if (ano > 900 && ano <= 1000) {
    return 'Século X';
  } else if (ano > 1000 && ano <= 1100) {
    return 'Século XI';
  } else if (ano > 1100 && ano <= 1200) {
    return 'Século XII';
  } else if (ano > 1200 && ano <= 1300) {
    return 'Século XIII';
  } else if (ano > 1300 && ano <= 1400) {
    return 'Século XIV';
  } else if (ano > 1400 && ano <= 1500) {
    return 'Século XV';
  } else if (ano > 1500 && ano <= 1600) {
    return 'Século XVI';
  } else if (ano > 1600 && ano <= 1700) {
    return 'Século XVII';
  } else if (ano > 1700 && ano <= 1800) {
    return 'Século XVIII';
  } else if (ano > 1800 && ano <= 1900) {
    return 'Século XIX';
  } else if (ano > 1900 && ano <= 2000) {
    return 'Século XX';
  } else if (ano > 2000 && ano <= 2100) {
    return 'Século XXI';
  } else {
    return 'Ano inválido!';
  }
  /** 
    Século I: ano 1 ao ano 100
    Século II: ano 101 ao ano 200
    Século III: ano 201 ao ano 300
    Século IV: ano 301 ao ano 400
    Século V: ano 401 ao ano 500
    Século VI: ano 501 ao ano 600
    Século VII: ano 601 ao ano 700
    Século VIII: ano 701 ao ano 800
    Século IX: ano 801 ao ano 900
    Século X: ano 901 ao ano 1000
    Século XI: ano 1001 ao ano 1100
    Século XII: ano 1101 ao ano 1200
    Século XIII: ano 1201 ao ano 1300
    Século XIV: ano 1301 ao ano 1400
    Século XV: ano 1401 ao ano 1500
    Século XVI: ano 1501 ao ano 1600
    Século XVII: ano 1601 ao ano 1700
    Século XVIII: ano 1701 ao ano 1800
    Século XIX: ano 1801 ao ano 1900
    Século XX: ano 1901 ao ano 2000
    Século XXI: ano 2001 ao ano 2100
  */
}
