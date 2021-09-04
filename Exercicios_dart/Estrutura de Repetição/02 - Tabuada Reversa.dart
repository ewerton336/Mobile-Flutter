void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable

  int intervalo = 10;
  int varB = 12;
  if (varB < intervalo) {
    print('o valor de B deve ser maior que A');
  }

  if (varB > intervalo) {
    do {
      int result = varB * intervalo;
      print('$varB * $intervalo = $result');
      intervalo = intervalo - 1;
    } while (intervalo > 0);
  }
}
