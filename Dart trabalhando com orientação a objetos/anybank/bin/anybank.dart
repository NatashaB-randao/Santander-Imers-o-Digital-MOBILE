import '../lib/conta.dart';

void main() {
  Conta contaSergio = Conta("Sergio", 1000.0);
  Conta contaJoao = Conta("João", 2000.0);

  List<Conta> contas = [contaSergio, contaJoao];

  for (var conta in contas) {
    conta.imprimeSaldo();
  }

  contaJoao.receber(3000);
  contaSergio.receber(1000);
  contaSergio.enviar(200);
}



