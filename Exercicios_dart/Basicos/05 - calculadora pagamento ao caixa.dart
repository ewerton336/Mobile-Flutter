void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable
  // 4. Entrar via teclado com o valor da cotação do dólar e uma certa quantidade de dólares.
  //Calcular e exibir o valor correspondente em Reais (R$).
  double pao = 3.00;
  double leite = 5;
  double farinha = 2;
  double margarina = 2.50;
  double oleo = 10;
  double somaProdutos = pao + leite + farinha + margarina + oleo;
  double dinheiro = 1;
  double troco = dinheiro - somaProdutos;
  double pagar = somaProdutos - dinheiro;

  if (dinheiro - somaProdutos < 0) {
    print("falta R\$ $pagar");
  } else {
    print("Troco: R\$ $troco");
  }
}
