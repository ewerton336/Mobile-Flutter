void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable

  int numeros = 1;
  int contador = 20;
  int multiplicador = 2;
  int i = 1;

  print(numeros);
  print(numeros);
  print(numeros);
  do {
    print(numeros + multiplicador);
    multiplicador = multiplicador * 2;

    i++;
  } while (i < 17);
}
