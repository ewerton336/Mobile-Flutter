void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable

  double aceleracao = 1; // m/s2
  double v0 = 2; //m/s
  double tempo = 60; //segundos
  double velocidade = v0 + aceleracao * tempo;
  print(velocidade);

  if (velocidade <= 40) {
    print('$velocidade KM/H muito lento');
  }
  if (velocidade > 40 && velocidade <= 60) {
    print('$velocidade KM/H velocidade permitida.');
  }
  if (velocidade > 60 && velocidade <= 80) {
    print('$velocidade KM/H Velocidade de cruzeiro.');
  }
  if (velocidade > 80 && velocidade <= 120) {
    print('$velocidade KM/H Veículo rápido.');
  }
  if (velocidade > 120) {
    print('$velocidade KM/H Veículo muito rápido.');
  }
}
