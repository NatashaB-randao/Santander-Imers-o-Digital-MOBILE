import 'package:anybank/conta.dart';

void main() {
  Conta contaSergio = Conta("Sergio", 1000.0);
  Conta contaJoao = Conta("João", 2000.0);
  ContaCorrente contaChris = ContaCorrente("Chris", 4000.0);
  ContaPoupanca contaAna = ContaPoupanca("Ana", 4000.0);

  List<Conta> contas = [contaSergio, contaJoao, contaChris, contaAna];

  for (var conta in contas) {
    conta.imprimeSaldo();
  }

  contaJoao.receber(3000);
  contaSergio.receber(1000);
  contaSergio.enviar(200);

  contaChris.imprimeSaldo();
  contaChris.enviar(4300);

  contaAna.imprimeSaldo();  
  contaAna.enviar(4300);
  contaAna.aplicarRendimento();
  contaAna.imprimeSaldo();
}

