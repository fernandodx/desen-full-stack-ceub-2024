//Escreva uma função que retorne a soma de 2 numeros.
//Escreva uma função que receba um ano (int) e retorne o seculo daquele ano. (int)

void main() {
  
  int numero1;
  int numero2;
  int ano;
  int seculoEncontrado;

int resultadoSomaDoisNumeros = calculaDoisNumeros(10, 25);

print("O resultado da soma de dois numeros é igual a: ${resultadoSomaDoisNumeros}");

ano = 2100;

 seculoEncontrado = retornaSeculo(ano);

 print("O ano ${ano} está no ${seculoEncontrado}");

}

//seculo 20: ano 1901 ate 2000
//seculo 21: ano 2001 ate 2100

 int calculaDoisNumeros(int numero1, int numero2) {
    int resultado = numero1 + numero2;
    return resultado;
  }


int retornaSeculo(int ano) {
    if (ano >= 1901 && ano <= 2000) {
        return 20;
    } else if (ano >= 2001 && ano <= 2100) {
        return 21;
    } else {
       return -1; 
    }
}
 

  