void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable

//2. Entrar com o peso e a altura de uma determinada pessoa.
//Após a digitação, exibir se esta pessoa está ou não com seu peso ideal. Fórmula: peso/altura².

  double peso = 90.5;
  double altura = 1.67;
  double imc = (peso / (altura * altura));

  print("seu IMC é $imc");
}
