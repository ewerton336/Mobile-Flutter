import 'package:app_meu_perfil_bottom/pages/Experiencia.dart';
import 'package:app_meu_perfil_bottom/pages/Formacao.dart';
import 'package:flutter/material.dart';
import 'package:app_meu_perfil_bottom/pages/Formacao.dart';
import 'package:app_meu_perfil_bottom/pages/Experiencia.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [_texto('Nome: Ewerton Guimarães'),
        _texto('Telefone: (13) 99782-7870'),
      ],
    )),
    Formacao(),
    Experiencia(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          //iconSize: 20,
          //selectedFontSize: 20,
          //unselectedFontSize: 10,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Pessoal',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment_turned_in),
              label: 'Formação',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              label: 'Experiência',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Ewerton Guimarães"),
      centerTitle: true,
      backgroundColor: Colors.blueAccent,
    );
  }

  _corpo(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _botao(context, 'Ir para Tela Sobre', Formacao()),
            _botao(context, 'Ir para Tela Contato', Experiencia()),
            _texto('a'),
          ],
        ),
      ),
    );
  }



  _botao(BuildContext context, String textoBotao, Widget tela) {
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
          _onClickNavegacao(context, tela);
        });
  }

  _onClickNavegacao(BuildContext context, Widget tela) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return tela;
      }),
    );
  }


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
