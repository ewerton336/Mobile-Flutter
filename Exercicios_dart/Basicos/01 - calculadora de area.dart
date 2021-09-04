import 'dart:io';
void main(List<String> arguments) {

  //1. Entrar via teclado com a base e a altura de um retângulo, calcular e exibir sua área.

  void main ()
  {
    print('Altura do retangulo: ');
    var altura  = stdin.readLineSync();
    print('Largura do retangulo: ');
    var largura  = stdin.readLineSync();
    var area  = int.parse(altura!) * int.parse(largura!);

    print('Area: $area ');




  }
}
