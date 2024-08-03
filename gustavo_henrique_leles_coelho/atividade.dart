void main() {
    int numero1, numero2, ano, seculoEncontrado;
    int resultadoSomaDoisNumeros = calculaDoisNumeros(5, 5);
    print("O resultado da soma de dois numeros é igual a: ${resultadoSomaDoisNumeros}");
    seculoEncontrado = retornaSeculo(2024);
    print("O ano ${ano} está no ${seculoEncontrado}");
}

 int somaDoisNumeros(int numero1, int numero2) { 
    return numero1 + numero2;
  }

int retornarSeculo(int ano) {
    if (ano <= 0)
        throw new ArgumentException("O ano deve ser um número positivo.");

    return (ano + 99) / 100;
}
 

  