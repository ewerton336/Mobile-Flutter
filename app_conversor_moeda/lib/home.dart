import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  String dropdownValor1 = 'Real';
  String dropdownValor2 = 'Dolar';
  String InfoResultado = "";

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
      title: Text("Conversor de Moedas"),
      centerTitle: true,
      backgroundColor: Colors.purple,
    );
  }

  _Body() {
    return SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _texto1('Digite o valor a converter:'),
              _texto('Converter de:'),
              _dropdown1(),
              _texto('Para:'),
              _dropdown2(),
              _botaoConverter(),
              _resultado(),
            ]));
  }

  _texto1(String texto) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "$texto",
          labelStyle: TextStyle(color: Colors.black, fontSize: 35)),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 35,
      ),
      controller: n1Controller,
    );
  }

  _botaoConverter() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 35.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcular,
          child: Text("Converter Dinheiro",
              style: TextStyle(color: Colors.white, fontSize: 35.0)),
          color: Colors.greenAccent[200],
        ),
      ),
    );
  }

  _resultado() {
    return Text(
      InfoResultado,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 35.0),
    );
  }

  _texto(String texto) {
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 35.0),
    );
  }

  void _calcular() {
    setState(() {
      double dolarParaReal = 5.29;
      double realParaDolar = 0.19;
      double input = double.parse(n1Controller.text);
      if (dropdownValor1 == 'Real' && dropdownValor2 == 'Dolar') {
        double result = input / dolarParaReal;
        InfoResultado = 'R\$$input = U\$$result';
      }

      if (dropdownValor1 == 'Dolar' && dropdownValor2 == 'Real') {
        double result = input * dolarParaReal;
        InfoResultado = 'U\$$input = R\$$result';
      } else {
        InfoResultado =
            'Você está tentando converter $dropdownValor1 para $dropdownValor2';
      }
    });
  }

  _dropdown1() {
    return DropdownButton<String>(
      value: dropdownValor1,
      items: <String>['Real', 'Dolar'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, fontSize: 35.0)),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
          dropdownValor1 = valorSelecionado!;
        });
      },
    );
  }

  _dropdown2() {
    return DropdownButton<String>(
      value: dropdownValor2,
      items: <String>['Real', 'Dolar'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, fontSize: 35.0)),
        );
      }).toList(),
      onChanged: (String? valorSelecionado) {
        setState(() {
          dropdownValor2 = valorSelecionado!;
        });
      },
    );
  }
}
