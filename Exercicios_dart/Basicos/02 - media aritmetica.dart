import 'dart:io';
void main(List<String> args) {
/*2. Calcular e exibir a média aritmética de quatro valores quaisquer que serão digitados. */

  print('Insira o primeiro numero: ');
  var numero1 = stdin.readLineSync();
  print('Insira o segundo numero: ');
  var numero2 = stdin.readLineSync();
  print('Insira o terceiro numero: ');
  var numero3 = stdin.readLineSync();
  print('Insira o quarto numero: ');
  var numero4 = stdin.readLineSync();
  var media4 = (int.parse(numero1!) + int.parse(numero2!) + int.parse(numero3!) + int.parse(numero4!)) / 4;
  print("media de 4 numeros: $media4");
}
