// Aluno = Jose wellington

//Escreva uma função que retorne a soma de 2 numeros.

void main() {
   int resultado= soma(2, 5);
   print('O resultado eh >  $resultado');
}

int soma(int nr1, int nr2){

    return(nr1+nr2);

}

// Escreva uma função que receba um ano (int) e retorne o século daquele ano. (int)

void main() {
  int resultado = seculoDoAno(1501);
  print('O resultado é >  $resultado');
}

int seculoDoAno(int ano) {
  // Verifica se o ano é divisível por 100
    return (ano -1) ~/ 100 + 1;
  }