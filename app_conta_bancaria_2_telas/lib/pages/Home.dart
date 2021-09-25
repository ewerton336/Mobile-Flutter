import 'package:flutter/material.dart';
import 'package:app_conta_bancaria_2_telas/pages/Resultados.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController idadeController = TextEditingController();
  String dropdownSexoValor = 'Não declarado';
  String dropdownEscolaridadeValor = 'Fundamental incompleto';
  double valorSlider = 0;
  bool valorSwitch = false;
  String Resultado = "";
  String nome = 'oi';
  double idade = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: _Body(),
      backgroundColor: Colors.white,
    );
  }

  _AppBar() {
    return AppBar(
      title: Text("Abertura de conta bancária"),
      centerTitle: true,
      backgroundColor: Color.fromRGBO(131, 10, 210, 1),
    );
  }

  _Body() {
    return SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //_imagemBombaPosto(),
              _nome(),
              _idade(),
              _texto('Sexo:'),
              _dropdownSexo(),
              _texto('Escolaridade:'),
              _dropdownEscolaridade(),
              _texto('Limite no desejado no cartão:'),
              _slider(),
              _texto('Brasileiro?'),
              _switch(),
              _botaoConfirmar(),
              _texto(Resultado),
            ]));
  }

  _imagemBombaPosto() {
    return Center(
        child: Image.asset(
      'images/alcool.png',
      height: 150,
      width: 150,
    ));
  }

  _nome() {
    return TextField(
      decoration: InputDecoration(
          labelText: "Nome:",
          labelStyle: TextStyle(color: Colors.black, fontSize: 25)),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
      ),
      controller: nomeController,
    );
  }

  _idade() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Idade:",
          labelStyle: TextStyle(color: Colors.black, fontSize: 25)),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 35,
      ),
      controller: idadeController,
    );
  }

  _texto(String valor) {
    return Text(
      valor,
      style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }

  _dropdownSexo() {
    return DropdownButton<String>(
      value: dropdownSexoValor,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.black, fontSize: 25),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownSexoValor = newValue!;
        });
      },
      items: <String>['Masculino', 'Feminino', 'Não declarado']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  _dropdownEscolaridade() {
    return DropdownButton<String>(
      value: dropdownEscolaridadeValor,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.black, fontSize: 25),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownEscolaridadeValor = newValue!;
        });
      },
      items: <String>[
        'Fundamental incompleto',
        'Fundamental completo',
        'Ensino médio incompleto',
        'Ensino médio completo',
        'Superior incompleto',
        'Superior completo'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  _slider() {
    return Slider(
      value: valorSlider,
      min: 0,
      max: 2000,
      divisions: 40,
      label: valorSlider.round().toString(),
      onChanged: (double value) {
        setState(() {
          valorSlider = value;
        });
      },
    );
  }

  _switch() {
    return Switch(
      value: valorSwitch,
      onChanged: (value) {
        setState(() {
          valorSwitch = value;
        });
      },
    );
  }

  _botao(BuildContext context, Widget tela, String textoBotao) {
    return RaisedButton(
        color: Colors.green,
        child: Text(
          textoBotao,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () {
          _onClickOutraTela(context, tela);
        });
  }

  _onClickOutraTela(BuildContext context, Widget tela) {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) {
          return tela;
        }),
      );
    });
  }

  _botaoConfirmar() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 35.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _confirmar,
          child: Text("Confirmar",
              style: TextStyle(color: Colors.white, fontSize: 35.0)),
          color: Colors.purpleAccent[200],
        ),
      ),
    );
  }

  _confirmar() {
    setState(() {
      nome = nomeController.text.toString();
      idade = double.parse(idadeController.text);
      String nacionalidade =
          valorSwitch == true ? "Brasileiro" : "Não Brasileiro";
      _onClickOutraTela(
          context,
          Resultados(
              nome: nome,
              idade: idade,
              sexo: dropdownSexoValor,
              escolaridade: dropdownEscolaridadeValor,
              limite: valorSlider,
              nacionalidade: valorSwitch.toString()));
    });
  }
}
