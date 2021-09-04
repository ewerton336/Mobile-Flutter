void main() {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable

  var indice = [
    1,
    5,
    19,
    8,
    9,
    563,
    5,
    63,
    6,
    64,
    36,
    2,
    1,
    56,
    46,
    12,
    74,
    9,
    2
  ];
  var containdice = indice.length;

  for (var i = containdice; i >= 1; i--) {
    indice[i - 1] = indice[i - 1] * 2;
  }

  print(indice);
}
