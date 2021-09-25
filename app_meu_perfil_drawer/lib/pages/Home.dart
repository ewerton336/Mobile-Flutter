import 'package:app_meu_perfil_drawer/pages/Experiencia.dart';
import 'package:app_meu_perfil_drawer/pages/Formacao.dart';
import 'package:flutter/material.dart';
import 'package:app_meu_perfil_drawer/pages/Formacao.dart';
import 'package:app_meu_perfil_drawer/pages/Experiencia.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;

  final telas = [
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
        body: telas[_currentPage],
        drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('Ewerton Guimarães'),
                  accountEmail: Text('ewertonguimaraes2@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/ewerton.jpg'),

                  ),
                ),

                ListTile(
                  //leading: Icon(Icons.star),
                  title: Text('Inicio'),
                  subtitle: Text('Meu Perfil.'),
                  trailing: Icon(Icons.account_box_outlined),
                  onTap: () {
                    setState(() {
                      _currentPage = 0;
                    });
                  },
                ),
                ListTile(
                  //leading: Icon(Icons.star),
                  title: Text('Formação'),
                  subtitle: Text('Minha Formação acadêmica.'),
                  trailing: Icon(Icons.account_box_outlined),
                  onTap: () {
                    setState(() {
                      _currentPage = 1;
                    });
                  },
                ),
                ListTile(
                  //leading: Icon(Icons.star),
                  title: Text('Experiência'),
                  subtitle: Text('Minhas Experiências anteriores.'),
                  trailing: Icon(Icons.contact_mail_rounded),
                  onTap: () {
                    setState(() {
                      _currentPage = 2;
                    });
                  },
                ),
              ],
            )),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("App MacGyver"),
      centerTitle: true,
      backgroundColor: Colors.green,
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
