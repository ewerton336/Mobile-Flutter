import 'dart:html';

void main(List<String> args) {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable
/* 4. Entrar com o peso e a altura de uma determinada pessoa. Após a digitação, exibir se esta pessoa está ou não com seu peso ideal. 
Fórmula: peso/altura². */

  var sexo = "F";
  var peso = 30;
  var alturapessoa = 1.17;
  var metrica = peso / (alturapessoa * alturapessoa);

  print("imc: $metrica");

  if (sexo == "F") {
    if (metrica < 19) {
      print("magra pra krl");
    }
    if (metrica > 19 && metrica < 24) {
      print("tá na media");
    }
    if (metrica > 24) {
      print("obesona");
    }
  }

  if (sexo == "M") {
    if (metrica < 20) {
      print("magro pra krl");
    }
    if (metrica > 20 && metrica < 25) {
      print("tá na media");
    }
    if (metrica > 25) {
      print("gordão");
    }
  }
}
