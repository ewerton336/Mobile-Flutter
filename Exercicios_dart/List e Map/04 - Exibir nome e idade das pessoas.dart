import 'package:faker/faker.dart';
void main() {




  var pessoas = {};

  for (int i = 1; i <100; i++)
  {
    pessoas['$i'] = Pessoa(faker.person.firstName(), faker.randomGenerator.integer(70));
  }

  for(Pessoa p in pessoas.values)
    {
      print('Nome: ' + p.nome + ' Idade: ' + p.idade.toString());
    }

}


class Pessoa
{
String nome;
int idade;
Pessoa(this.nome, this.idade);
}

