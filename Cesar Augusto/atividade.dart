// Escreva um função que retorne a soma de dois numeros.
// Escreva uma função que receba um ano (int) e retorne o seculo daquele ano. (int)

void main() {
  print(somaDoisNumeros(19, 98));
  print(obterSeculo(1998));
}

String somaDoisNumeros(int num1, int num2) {
  return "A soma de $num1 e $num2 é ${num1 + num2}";
}

String obterSeculo(int ano) {
  ano = 1001;
  var texto = ano.toString();
  int seculo = -1;

  if (texto.length == 2 || ano == 100) {
    return 'Século 1';
  }

  String numeroInicial = texto.substring(0, texto.length - 2);
  String numeroFinal = texto.substring(texto.length - 2, texto.length);

  if (numeroFinal == '00') {
    seculo = int.parse(numeroInicial);
  } else {
    seculo = int.parse(numeroInicial) + 1;
  }

  if (ano == -1) {
    return "Ano inválido!";
  } else {
    return "Século $seculo";
  }
}
