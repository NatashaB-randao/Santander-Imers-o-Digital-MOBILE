class Conta {
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  void receber(double valor) {
    _saldo += valor;
    imprimeSaldo();
  }

  void enviar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      imprimeSaldo();
    }
  }

  void imprimeSaldo() {
    print("O saldo atual de $titular é R\$$_saldo");
  }
}

class ContaCorrente extends Conta {
  double limiteChequeEspecial = 300.0;

  ContaCorrente(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (_saldo + limiteChequeEspecial >= valor) {
      _saldo -= valor;
      imprimeSaldo();
    }
  }

}

class ContaPoupanca extends Conta {
  double taxaRendimento = 0.05;

  ContaPoupanca(super.titular, super._saldo);

  void aplicarRendimento() {
     _saldo += _saldo * taxaRendimento;
    }
}