import 'dart:io';

void main() {
  List<String> notas = <String>[];
  getComando();
}

String getComando() {
  print("Digite um comando: 1 - Adicionar nota, 2 - Listar notas, 3 - Sair");
  List<String>? comandos = <String> ["1", "2", "3"];
  String? entrada = "";

  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
      print("Comando inválido!");
      getComando();
      
  }

  return entrada!;
}

List<String> adicionarNota(List<String> notas) {
  print("Digite a nota que deseja adicionar:");
  String? nota = "";

  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print("Não é possível adicionar uma nota vazia!");
    adicionarNota(notas);
  } 

  notas.add(nota!);

  return notas;
}