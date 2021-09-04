void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable

  var indice = [1, 5, 19, 8, 9, 563, 5, 63, 6, 64];
  var containdice = indice.length;

  indice.sort();

  print('Indice organizado: $indice');
  print('maior número: ' + indice[containdice - 1].toString());
}
