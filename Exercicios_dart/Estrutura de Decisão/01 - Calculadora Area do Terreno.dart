void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable

  /* 1. Calcular e exibir a área de um retângulo, a partir dos valores da base e altura que serão digitados. Se a área for maior que 100, 
exibir a mensagem “Terreno grande”, caso contrário, exibir a mensagem “Terreno pequeno”.*/

  double altura = 30;
  double largura = 20;
  double area = altura * largura;
  if (area > 100) {
    print("Terreno grande");
  } else {
    print("terreno pequeno");
  }
}
