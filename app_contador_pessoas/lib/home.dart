import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int InfoContador = 0;

  //appBar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _Appbar(),
        backgroundColor: Colors.white,
        body: _Corpo());
  }

  _Corpo()
  {
    return Center(
      //padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _botaoMaisPessoa(),
              _botaoMenosPessoa(),
              _resultado()
            ]));
  }

  _Appbar()
  {
   return AppBar(
      title: Text("Contador de pessoas no Ambiente"),
      centerTitle: true,
      backgroundColor: Colors.amberAccent,
    );
  }



  void _adicionar() {
    setState(() {
      InfoContador++;
    });
  }

  void _subtrair() {
    setState(() {
      InfoContador--;
    });
  }

  _botaoMaisPessoa() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 35.0),
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        height: 50.0,
        child: RaisedButton(
          onPressed: _adicionar,
          child: Text("+ pessoa",
              style: TextStyle(color: Colors.black, fontSize: 35.0)),
          color: Colors.blueAccent,
        ),
      ),
    );
  }

  _botaoMenosPessoa() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 35.0),
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        height: 50.0,
        child: ElevatedButton(
          onPressed: _subtrair,
          child: Text("- pessoa",
              style: TextStyle(color: Colors.black, fontSize: 35.0)),
          style: ElevatedButton.styleFrom(primary: Colors.redAccent),
        ),
      ),
    );
  }

  _resultado() {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(
          "Pessoas no ambiente: " + InfoContador.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.red, fontSize: 35.0),
        ));
  }
}
