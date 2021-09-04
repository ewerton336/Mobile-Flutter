import 'dart:io';
void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  /* 3. Entrar via teclado com o valor de uma temperatura em graus Celsius, calcular e exibir sua temperatura equivalente em Fahrenheit. */
  print('Insira a temperatura em Graus celsius: ');
  var temperaturaCelsius = stdin.readLineSync();
  double far = (int.parse(temperaturaCelsius!) * (9 / 5)) + 32;
  print("$temperaturaCelsiusºC = $farºF");
}
