import 'dart:io';

void main() {
  var conta1 = new ContaBancaria('Clebson', 'C', 35, 23000.50);
  var conta2 = new ContaBancaria('Valdomira', 'P', 23, 5000.3);

  print(' Bem vindo ' + conta1.nomeCliente.toString() + '!') ;
  while (true) {

        print(' Selecione uma opção: \n 1) Transferência \n 2) Saque \n 3) Depósito \n 4) Consultar Saldo');

    var opcaoInput = stdin.readLineSync();
    var opcao = int.parse(opcaoInput!);

    switch (opcao) {
      case 1:
        print('Insira o valor a transferir: ');
        var valorTransferirInput = stdin.readLineSync();
        var valorTransferir = double.parse(valorTransferirInput!);
        print('Insira o numero da conta destino: ');
        var contaDestinoInput = stdin.readLineSync();
        var contaDestino = int.parse(contaDestinoInput!);
        print(conta1.transferencia(valorTransferir, conta1, conta2));
        break;

      case 2:
        print('Insira o valor a sacar: ');
        var valorSacarInput = stdin.readLineSync();
        var valorSacar = double.parse(valorSacarInput!);
        print(conta1.Saque(valorSacar, conta1));
        break;

      case 3:
        print('Insira o valor a depositar: ');
        var valorDepositarInput = stdin.readLineSync();
        var valorDepositar = double.parse(valorDepositarInput!);
        print(conta1.Deposito(valorDepositar, conta1));
        break;

      case 4:
        print(conta1.ConsultaSaldo(conta1));
        break;


    }
  }
}

class ContaBancaria {
  String nomeCliente;
  String tipoConta;
  int numeroConta;
  double saldo;

  ContaBancaria(this.nomeCliente, this.tipoConta, this.numeroConta, this.saldo);

  String transferencia(double valorTransferir, ContaBancaria contaOrigem,
      ContaBancaria contaDestino) {
    if (contaOrigem.saldo > valorTransferir) {
      contaOrigem.saldo = contaOrigem.saldo - valorTransferir;
      contaDestino.saldo = contaDestino.saldo + valorTransferir;
      return 'Transferencia realizada com sucesso para ' +
          contaDestino.nomeCliente.toString() +
          '! Seu saldo é ' +
          contaOrigem.saldo.toString();
    } else {
      return 'Saldo insuficiente para realizar esta operação.';
    }
  }

  String Saque(double valorSacar, ContaBancaria contaOrigem) {
    if (contaOrigem.saldo > valorSacar) {
      contaOrigem.saldo = contaOrigem.saldo - valorSacar;
      return 'Aguarde a saída das cédulas. Seu novo saldo é R\$' +
          contaOrigem.saldo.toString();
    } else {
      {
        return 'Saldo insuficiente para realizar essa operação.';
      }
    }
  }

  String Deposito(double valorDepositar, ContaBancaria contaOrigem) {
    contaOrigem.saldo = contaOrigem.saldo + valorDepositar;
    return 'Depósito realizado com sucesso! Seu novo saldo é ' +
        contaOrigem.saldo.toString();
  }

  String ConsultaSaldo(ContaBancaria conta)
  {
    return 'Seu saldo é R\$' + conta.saldo.toString();
  }
}
