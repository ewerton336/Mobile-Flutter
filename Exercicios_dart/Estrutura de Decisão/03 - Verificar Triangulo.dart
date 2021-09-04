import 'dart:html';

void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable
/* 3. A partir de três valores que serão digitados, 
verificar se formam ou não um triângulo. Em caso positivo, 
exibir sua classificação: “Isósceles, escaleno ou eqüilátero”. 
Um triângulo escaleno possui todos os lados diferentes, 
o isósceles, dois lados iguais 
e o eqüilátero,todos os lados iguais. 
Para existir triângulo é necessário que a soma de dois lados
 quaisquer seja maior que o outro, isto, para os três lados
*/

  double lado1 = 11;
  double lado2 = 15;
  double lado3 = 10;
  bool checkTriangulo = isTriagulo(lado1, lado2, lado3);
  var trianguloTipo = TipoTriangulo(lado1, lado2, lado3);

  if (checkTriangulo == true) {
    print('É um triângulo $trianguloTipo.');
  } else {
    print('não é um triangulo.');
  }
}

bool isTriagulo(lado1, lado2, lado3) {
  if ((lado1 + lado2) > lado3 ||
      (lado1 + lado3) > lado2 ||
      (lado2 + lado3) > lado1) {
    return true;
  } else {
    return false;
  }
}

String TipoTriangulo(lado1, lado2, lado3) {
  if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    return 'Isósceles';
  }
  if (lado1 == lado2 && lado1 == lado3) {
    return 'Equilátero';
  }
  if (lado1 != lado2 && lado1 != lado3 && lado2 != lado3) {
    return 'escaleno';
  } else {
    return '';
  }
}
