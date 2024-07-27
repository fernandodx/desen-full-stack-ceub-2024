//Escreva uma função que retorne a soma de 2 números
// Escreva uma função que receba um ano (int) e retorne o século daquele ano.

  void main() {
    // Exemplos de uso
    print(calcularSeculo(2024)); // Saída: 21
    print(calcularSeculo(1990)); // Saída: 20
    print(calcularSeculo(-2000)); // Saída: ArgumentError
  
    print(somar(5, 3));  // Saída: 8
    print(somar(-1, 4)); // Saída: 3
  
  }

  int calcularSeculo(int ano) {
    if (ano <= 0) {
      throw ArgumentError('O ano deve ser um valor positivo.');
    }
    return (ano + 99) ~/ 100;
  }

  int somar(int a, int b) {
  return a + b;
}


