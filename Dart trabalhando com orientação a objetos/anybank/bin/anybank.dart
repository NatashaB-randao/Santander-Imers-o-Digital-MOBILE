import 'package:anybank/conta.dart';

void main() {
  ContaCorrente contaChris = ContaCorrente("Chris", 4000.0);
  ContaPoupanca contaAna = ContaPoupanca("Ana", 4000.0);


  contaChris.imprimeSaldo();
  contaChris.enviar(4300);

  contaAna.imprimeSaldo();  
  contaAna.enviar(4300);
  contaAna.aplicarRendimento();
  contaAna.imprimeSaldo();
}

