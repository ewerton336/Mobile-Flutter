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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _AppBar(),
        body: _Body(),
      backgroundColor: Colors.black,
       );
  }

  _AppBar()
  {
   return AppBar(
      title: Text("Alcool ou gasolina?"),
      centerTitle: true,
      backgroundColor: Colors.purple,
    );
  }

  _Body()
  {
    return SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _imagemBombaPosto(),
              _texto1(),
              _texto2(),
              _botaoCalcular(),
              _resultado(),

            ]));
  }


  _imagemBombaPosto() {
    return Center(
        child: Image.asset('images/alcool.png',
          height: 150,
          width: 150,
        )
    );
  }


  _texto1() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Digite o preço do alcool",
          labelStyle: TextStyle(color: Colors.white, fontSize: 25)),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
      controller: n1Controller,
    );
  }

  _texto2() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: "Digite o preço da gasolina",
          labelStyle: TextStyle(color: Colors.white, fontSize: 25)),

      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,

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
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 35.0)),
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


  void _calcular() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);

      double resultado = n1 / n2;

      if (resultado <=0.7)
      {
        InfoResultado = 'É melhor abastecer com álcool.';
      }

      else
      {
        InfoResultado = 'É melhor abastecer com gasolina';
      }
    });
  }
}
