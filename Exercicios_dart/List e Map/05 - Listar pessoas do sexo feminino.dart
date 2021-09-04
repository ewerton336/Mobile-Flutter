library faker.example;


import 'package:faker/faker.dart';

void main() {
  // ignore_for_file: omit_local_variable_types
  // ignore_for_file: unused_local_variable



  final pessoas = {};


for (int i = 1; i <50; i++)
  {
    pessoas['$i'] = Pessoa(faker.person.firstName(), 26, 'M');
  }

 for (int i = 50; i <100; i++)
 {
   pessoas['$i'] = Pessoa(faker.person.firstName(), 26, 'F');
 }


for (Pessoa p in pessoas.values)
  {
    if (p.sexo == 'F') {
      print('Nome:' + p.nome + ' Idade: ' + p.idade.toString() + ' Sexo: ' + p.sexo);
    }
  }




}
class Pessoa
{
  String nome;
  int idade;
  String sexo;
  Pessoa(this.nome, this.idade, this.sexo);
}