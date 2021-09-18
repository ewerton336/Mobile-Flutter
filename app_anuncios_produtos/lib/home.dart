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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.blueGrey,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Anúncios"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _texto('Anuncios recentes (deslise para a esquerda para navegar)'),
            _carrosel(),
          ],
        ),
      ),
    );
  }

  _carrosel() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      height: 300,
      child: PageView(
        children: <Widget>[
          _foto('computador.jpg'),
          _foto('iphone.jpg'),
          _foto('ps4.jpg'),
        ],
      ),
    );
  }

  _foto(String nomeFoto) {
    return
      Image.asset(
      "assets/images/$nomeFoto",
      height: 300,
      fit: BoxFit.cover,
    );
  }
  _texto(String texto) {
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

