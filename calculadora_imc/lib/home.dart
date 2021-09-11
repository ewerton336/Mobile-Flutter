import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  String InfoResultado = "Digite os dados para calcular";

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
      title: Text("Calculadora IMC"),
      centerTitle: true,
      backgroundColor: Colors.purpleAccent,
    );
  }

  _Body() {
    return SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _imagemImc(),
              _texto1(),
              _texto2(),
              _botaoCalcular(),
              _resultado(),
            ]));
  }

  _imagemImc() {
    return Center(
        child: Image.asset('images/cintura.jpg',
          height: 200,
          width: 250,
        )
    );
  }

  _texto1() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Peso",
          labelStyle: TextStyle(color: Colors.black, fontSize: 25)),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
      ),
      controller: n1Controller,
    );
  }

  _texto2() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Altura (em metros)",
          labelStyle: TextStyle(color: Colors.black, fontSize: 25)),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 35,
      ),
      controller: n2Controller,
    );
  }

  _botaoCalcular() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 35.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularImc,
          child: Text("Verificar",
              style: TextStyle(color: Colors.black, fontSize: 35.0)),
          color: Colors.orange[200],
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

  void _calcularImc() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);

      double alturaimc = n2 * n2;
      double resultado = n1 / alturaimc;
      print(resultado);

      if (resultado < 18.5) {
        InfoResultado = 'Abaixo do peso';
      }

      if (resultado >= 18.5 && resultado < 25) {
        InfoResultado = 'Peso normal';
      }

      if (resultado >= 25 && resultado < 30) {
        InfoResultado = 'Sobrepeso';
      }

      if (resultado >= 30 && resultado < 35) {
        InfoResultado = 'Obesidade Grau I';
      }

      if (resultado >= 35 && resultado < 40) {
        InfoResultado = 'Obesidade Grau II';
      }

      if (resultado >= 40) {
        InfoResultado = 'Obesidade Mórbida';
      }
    });
  }
}
