void main() {
// Atividade

print("Soma de números: "+somarNumeros(1, 2).toString());

print("Século: "+buscarSeculo2(2000).toString());
}


// Funções
double somarNumeros(double num1, double num2){
  return num1+num2;
}

int buscarSeculo(ano){

  if(ano%100 == 0){

    return ((ano/100).floor() as int);

  }else{

    return ((1 + (ano/100)).floor() as int);

  }
}

int buscarSeculo2(int ano){
  return (ano/100).ceil();
}