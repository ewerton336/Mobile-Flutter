import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  String InfoResultado = "";

  void _calcular() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);

      double resultado = n1 * n2;
      InfoResultado = 'Resultado: $resultado';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Multiplicador de números"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _texto1(),
                  _texto2(),
                  _botaoCalcular(),
                  _resultado()
                ])));
  }

  _texto1() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Digite o 1º número",
          labelStyle: TextStyle(color: Colors.green, fontSize: 35)),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.green,
        fontSize: 35,
      ),
      controller: n1Controller,
    );
  }

  _texto2() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Digite o 2º número",
          labelStyle: TextStyle(color: Colors.green, fontSize: 35)),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.green,
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
          onPressed: _calcular,
          child: Text("Multiplicar",
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
}
