void main() {

  print("Resultado da soma de 1 + 1: ${Somador(1, 1)}");

  print("1900 é século: ${Secular(1900)}");
  print("1901 é século: ${Secular(1901)}");
  print("2000 é século: ${Secular(2000)}");
  print("2001 é século: ${Secular(2001)}");

}

double Somador (double num1, num2) {
  return num1 + num2;
}

int Secular (int ano) {
  String anoString = ano.toString();
  String inicioAno = anoString.substring(0, anoString.length - 2);
  String finalSeculo =  anoString.substring(anoString.length - 2);
  int seculo = int.parse(inicioAno) + 1;

  if (int.parse(finalSeculo) == 0) {
    return seculo - 1;
  } else {
    return seculo;
  }
}