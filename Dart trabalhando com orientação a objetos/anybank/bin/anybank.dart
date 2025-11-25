import '../lib/conta.dart';

void main() {
  Conta contaSergio = Conta("Sergio", 1000.0);
  Conta contaJoao = Conta("João", 2000.0);

  List<Conta> contas = [contaSergio, contaJoao];

  for (var conta in contas) {
    print("Titular: ${conta.titular}, Saldo: ${conta._saldo}");
  }

  contaJoao._saldo = 5000.0;
  print(contaJoao._saldo);

  contaSergio.receber(1000);
  print(contaSergio.titular);
  print(contaSergio._saldo);

  contaSergio.enviar(200);
  print(contaSergio.titular);
  print(contaSergio._saldo);
}



