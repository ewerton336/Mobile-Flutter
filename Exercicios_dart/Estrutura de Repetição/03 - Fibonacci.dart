void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable

  int anterior = 0;
  int proximo = 1;
  int i = 0;
  while (i < 30) {
    print(proximo);
    proximo = proximo + anterior;
    anterior = proximo - anterior;
    i++;
  }
}
