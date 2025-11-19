void main() {
  List<String> contas = <String>["Sergio", "João" ];
  List<double> saldos = <double>[1000.0, 2000.0];

  Conta contaSergio = Conta("Sergio", 1000.0);
  Conta contaJoao = Conta("João", 2000.0);
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);
}

