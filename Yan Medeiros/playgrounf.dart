void main() {
  //print("Olá Mundo!");

  // Adicionar comentários

  String nome = "Fernando Dias";
  var idade = 36;
  var altura = 1.76;
  var listaNomes = ["Fernando", "Lucas", "Ana", "Rosa"];
  List<dynamic> listaDinamica = [
    "Lucas",
    1.56,
    23,
    [1, 2, 3]
  ];
  var obj = {'id': 1, 'valor': "Olá Mundo"};

  // print(listaDinamica.runtimeType);
  // print(altura.runtimeType);

  // Condições
  if (idade >= 18) {
    print("É de Maior");
  } else if (idade >= 65) {
    print("É idoso");
  } else {
    print("É de menor");
  }

  // LOOPS
  for (final nome in listaNomes) {
    print("Nome: ${nome}");
  }

  while (idade < 40) {
    print("Idade aumentando: ${idade}");
    idade++;
  }

  var minhaFuncao = concatenarStringComVirgula("Fernando", "Dias");
  print(minhaFuncao);

  bool filtrarString(dynamic item) {
    return item.runtimeType == String;
  }

  var filtrarComFuncaoNormal = listaDinamica.where(filtrarString).toList();
  print(filtrarComFuncaoNormal);

  var filtrarComFuncao = listaDinamica.where((item) {
    print(item);
    return item.runtimeType == String;
  }).toList();
  print(filtrarComFuncao);

  Eletronico eletronico = Eletronico(220, false);
  eletronico.ligar();
  print("O eletrônico está ligado: ${eletronico.ligado}");

  eletronico = Geladeira(110, false);
  print("A geladeira está ligada: ${eletronico.ligado}");

  if (eletronico is Geladeira) {
    eletronico.refriar();
  } else if (eletronico is Televisao) {
    eletronico.assistir();
  }

  Televisao tv = Televisao(220, true);
  tv.conectar5G();

  concatenarStringComVirgulaNomeado(
    valor1: "Fern",
    valor2: "Dias",
  );
}

// Funções
// Retorno - nome da função - (parâmetros)
String concatenarStringComVirgula(String valor1, String? valor2) {
  return '${valor1}, ${valor2?.toUpperCase() ?? ""}';
}

String concatenarStringComVirgulaNomeado(
    {required String valor1, required String valor2}) {
  return '${valor1}, ${valor2}';
}

class Eletronico {
  int voltagem;
  bool ligado;

  Eletronico(this.voltagem, this.ligado);

  bool estaLigado() {
    return ligado;
  }

  void ligar() {
    ligado = true;
  }

  void desligar() {
    ligado = false;
  }
}

class Geladeira extends Eletronico implements DispositivoInterface {
  Geladeira(super.voltagem, super.ligado);

  @override
  int getAnoGarantia() {
    return 2;
  }

  @override
  String getMarca() {
    return "Brastemp";
  }

  void refriar() {
    print("Resfriando alimentos");
  }
}

class Televisao extends Eletronico with Conexao implements DispositivoInterface {
  Televisao(super.voltagem, super.ligado);

  @override
  String getMarca() {
    return "SONY";
  }

  @override
  int getAnoGarantia() {
    return 8;
  }

  void assistir() {
    print("Vendo TV!");
  }
}

mixin Conexao {
  void conectar5G() {
    print("Conectando ao 5G!");
  }
}

abstract class DispositivoInterface {
  int getAnoGarantia();

  String getMarca();
}

extension MinhaString on String {
  String primeiraMaiuscula() {
    return "${this.substring(0, 1).toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}
