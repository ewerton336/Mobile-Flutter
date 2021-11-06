import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sqflite/sqflite.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

String dropButton = "";

class _HomePageState extends State<HomePage> {
  File file;
  String path_foto = 'Tire uma foto';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Câmera / Galeria"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              path_foto,
            ),
            SizedBox(
              height: 20,
            ),
            file != null
                ? Image.file(file)
                : Image.asset(
                    "assets/images/camera.png",
                    height: 150,
                  ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        size: 60,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        _getImagemFromCamera();
                      }),
                  SizedBox(
                    width: 60,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.image,
                        size: 60,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        _getImagemFromGaleria();
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _getImagemFromCamera() async {
    File foto =
        (await ImagePicker().pickImage(source: ImageSource.camera)) as File;

    setState(() {
      this.file = foto;
      this.path_foto = foto.toString();
    });
  }

  void _getImagemFromGaleria() async {
    File foto = ImagePicker().pickImage(source: ImageSource.gallery) as File;
    setState(() {
      this.file = foto;
      this.path_foto = foto.toString();
    });
  }

  _drodownButton() {
    return DropdownButton<String>(
      items: <String>['Suporte', 'APIs', 'DBA'].map((String value) {
        return new DropdownMenuItem<String>(
          value: value,
          child: new Text(value),
        );
      }).toList(),
      onChanged: (String newValue) {
        setState(() {
          dropButton = newValue;
        });
      },
      value: dropButton,
    );
  }
}
