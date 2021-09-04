void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable

  var indice = [1, 5, 19, 8, 9, 17, 5, 63, 6, 64];
  var containdice = indice.length;

  do {
    print(indice[containdice - 1]);
    containdice--;
  } while (containdice >= 1);
}
