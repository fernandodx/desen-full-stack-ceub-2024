//Escreva uma função que retorne a soma de 2 números
void main(){
  int num1 = 2;
  int num2 = 2;
  int ano = 1900;

  
  soma(num1,num2);
  seculo(ano);
}

void soma(int a, int b){
  print(a + b);
}
//Receba um ano e retorne o século daquele ano(int)

void seculo (int ano){
   int seculos = (ano/100).ceil();
  print(seculos);

}