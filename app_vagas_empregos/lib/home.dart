import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Vagas de Emprego"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _textoTitulo('Deslise para baixo para visualizar'),
            _carrosel(),
          ],
        ),
      ),
    );
  }

  _carrosel() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      height: 600,
      child: ListView(
        children: <Widget>[
          _foto('ambev.jpg'),
          _textoTituloVaga('Analista Flutter'),
          _textoSalario('1200,00'),
          _textoDescricaoVaga('Vagas para programador dart com experiência em Kotlin.'),
          _foto('ibm-2x.png'),
          _textoTituloVaga('Analista Java'),
          _textoSalario('6000,00'),
          _textoDescricaoVaga('Vagas para programador dart com experiência em Java.'),
          _foto('t2s.jpg'),
          _textoTituloVaga('Analista Python'),
          _textoSalario('2500,00'),
          _textoDescricaoVaga('Vagas para programador dart com experiência em Pycharm.'),
          _foto('ibm-2x.png'),
          _textoTituloVaga('Desenvolvedor .NET'),
          _textoSalario('2000,00'),
          _textoDescricaoVaga('Vagas para programador dart com experiência em c#.'),

        ],
      ),
    );
  }

  _foto(String nomeFoto) {
    return
      Image.asset(
        "assets/images/$nomeFoto",
        height: 250,
        fit: BoxFit.cover,
      );
  }



  _textoTituloVaga(String texto)
  {
    return Text(
    '$texto',
        textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.red,
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    );
  }


  _textoDescricaoVaga(String texto) {
    return Text(
      "$texto",
      textAlign: TextAlign.justify,
      style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          //fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          //decorationColor: Colors.greenAccent,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }

  _textoSalario(String salario)
  {
    return Text('Salário:R\$$salario',
    textAlign: TextAlign.left,
      style: TextStyle(
        color:Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
      )
    );

  }


  _textoTitulo(String texto) {
    return Text(
      "$texto",
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.greenAccent,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }



}
