void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable

  int seqinicial = 1;
  int multiplicador = 1;

  int contador = 0;

  do {
    print(seqinicial + multiplicador);
    seqinicial = seqinicial + multiplicador;
    multiplicador = multiplicador + 2;
    contador++;
  } while (contador < 20);
}
