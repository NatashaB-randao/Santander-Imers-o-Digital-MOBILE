import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  List<String> operacoes = <String>["+", "-", "*", "/"];

  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

  void calcular() {
    switch (operacao) {
    case '+':
      soma();
      break;
    case '-':
      subtracao();
      break;
    case '*':
      multiplicacao();
      break;
    case '/':
      divisao();
      break;
    default:
      print('Operação inválida');
    }
  }

  print("Digite o primeiro número:");

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada);
    }
  }

  void getOperacao() {
    print("Digite uma operação válida:");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      
    }
  }

  print("Digite a operação:");

  entrada = stdin.readLineSync();
  if (entrada != null) {
    operacao = entrada;
  }

  print("Digite o segundo número:");

  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada);
    }
  }

  print("O resultado da operação é:");

  calcular();

}
