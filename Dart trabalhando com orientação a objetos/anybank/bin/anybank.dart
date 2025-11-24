void main() {
  Conta contaSergio = Conta("Sergio", 1000.0);
  Conta contaJoao = Conta("João", 2000.0);

  List<Conta> contas = [contaSergio, contaJoao];

  for (var conta in contas) {
    print("Titular: ${conta.titular}, Saldo: ${conta.saldo}");
  }

  contaJoao.saldo = 5000.0;
  print(contaJoao.saldo);

  contaSergio.receber(1000);
  print(contaSergio.titular);
  print(contaSergio.saldo);

  contaSergio.pagar(200);
  print(contaSergio.titular);
  print(contaSergio.saldo);
}


class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);

  void receber(double valor) {
    saldo += valor;
  }

  void pagar(double valor) {
    saldo -= valor;
  }
}

