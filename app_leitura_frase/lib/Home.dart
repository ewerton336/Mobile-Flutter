import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _switchDia = false;
  bool _switchTamanho = false;
  double tamanhoFonte = 15;
  var corFundo = Colors.black38;
  var corTexto = Colors.black38;

  _salvar() async {

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool("dia", _switchDia);
    await prefs.setBool("tamanho", _switchTamanho);

    print("Salvo! Dia: $_switchDia.toString(), Tamanho: $_switchTamanho.ToString()");
  }

  _recuperar() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _switchDia = prefs.getBool("dia")!;
      _switchTamanho = prefs.getBool("tamanho")!;

    });

    print("Método Recuperar Dia: $_switchDia.toString(), Tamanho: $_switchTamanho.ToString()");
  }

  _remover() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove("nome");

    print("Método Remover");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Text('Dia'),
              _botaoSwitchDia(),
              Text('Pequeno'),
              _botaoSwitchTamanho()
            ]),
            Row(
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text("Salvar", style: TextStyle(fontSize: 15)),
                  onPressed: _salvar,
                ),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text("Recuperar", style: TextStyle(fontSize: 15)),
                  onPressed: _recuperar,
                ),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text("Remover", style: TextStyle(fontSize: 15)),
                  onPressed: _remover,
                ),
              ],
            ),
            Row(
                children: <Widget>[
                  Flexible(child:
                  SingleChildScrollView(
                  child:
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent arcu orci, auctor tempor massa in, pellentesque ultrices eros. Donec tempor maximus nunc nec suscipit. Nam metus magna, commodo quis pretium eu, hendrerit in velit. Ut placerat posuere augue vitae scelerisque. Mauris vel dolor libero. Proin mi tortor, laoreet in ultrices in, posuere vitae lorem",
                  style: TextStyle(fontSize: tamanhoFonte,  backgroundColor: corFundo, color: corTexto),)
                  )
                  )]
            )
          ],
        ),
      ),
    );
  }




  _botaoSwitchDia() {
    return Switch(
      value: _switchDia,
      onChanged: (value) {
        setState(() {
          _switchDia = value;
          if (value == true)
            {
              corFundo = Colors.black;
              corTexto = Colors.white;
            }
          else
            {
              corFundo = Colors.white;
              corTexto = Colors.black;
            }
        });
      },
    );
  }

  _botaoSwitchTamanho() {
    return Switch(
      value: _switchTamanho,
      onChanged: (value) {
        setState(() {
          _switchTamanho = value;
          if (value == true)
            {
              tamanhoFonte = 25.0;
            }
          else
            {
              tamanhoFonte = 15.0;
            }
        });
      },
    );
  }





}
