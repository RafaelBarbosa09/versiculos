import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: _Home(),
  ));
}

class _Home extends StatefulWidget {
  @override
  __HomeState createState() => __HomeState();
}

class __HomeState extends State<_Home> {

  var versiculos = [
    "Josué 1:9 - Não fui eu que ordenei a você? Seja forte e corajoso! Não se apavore nem desanime, pois o Senhor, o seu Deus, estará com você por onde você andar.",
    "João 16:33 - Eu disse essas coisas para que em mim vocês tenham paz. Neste mundo vocês terão aflições; contudo, tenham ânimo! Eu venci o mundo.",
    "Isaías 41:10 - Por isso não tema, pois estou com você; não tenha medo, pois sou o seu Deus. Eu o fortalecerei e o ajudarei; eu o segurarei com a minha mão direita vitoriosa.",
    "João 3:16 - Porque Deus tanto amou o mundo que deu o seu Filho Unigênito, para que todo o que nele crer não pereça, mas tenha a vida eterna.",
    "Salmos 23:4 - Ainda que eu ande pelo vale da sombra da morte, não temerei mal algum, pois tu estás comigo."
  ];

  var versiculoGerado = "Clique abaixo para gerar um novo versículo";

  void gerarVersiculo() {
    var numeroSorteado = Random().nextInt(versiculos.length);

    setState(() {
      versiculoGerado = versiculos[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A palavra de Deus"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                versiculoGerado,
                textAlign: TextAlign.justify,
              ),
              RaisedButton(
                color: Colors.green,
                onPressed: gerarVersiculo,
                child: Text(
                  "Novo versículo",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}