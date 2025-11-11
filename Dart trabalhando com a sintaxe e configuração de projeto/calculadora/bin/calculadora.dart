import 'dart:io';

void main() {
  var numeroUm = stdin.readLineSync();
  var numeroDois = stdin.readLineSync();
  print(int.parse(numeroUm!) + int.parse(numeroDois!));
}
