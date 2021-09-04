import 'dart:io';
void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable
  // 4. Entrar via teclado com o valor da cotação do dólar e uma certa quantidade de dólares.
  //Calcular e exibir o valor correspondente em Reais (R$).
  double cotacaoDolar = 5.2;
  print('Insira o valor em Dólares: ');
  var valorDolaresNaCarteira = stdin.readLineSync();
  double totalEmReais = cotacaoDolar * double.parse(valorDolaresNaCarteira!);
  print("US\$$valorDolaresNaCarteira = R\$$totalEmReais");
}
