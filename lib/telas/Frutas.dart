import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class Frutas extends StatefulWidget {
  @override
  _FrutasState createState() => _FrutasState();
}

class _FrutasState extends State<Frutas> {

  AudioCache _audioCache = AudioCache(prefix: "audios/");

  _executar(String nomeAudio){

    _audioCache.play( nomeAudio + ".mp3");

  }



  @override
  Widget build(BuildContext context) {

    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      //scrollDirection: Axis.vertical,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            _executar("laranja");
          },
          child: Image.asset("assets/imagens/laranja.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("uva");
          },
          child: Image.asset("assets/imagens/uva.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("pera");
          },
          child: Image.asset("assets/imagens/pera.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("melancia");
          },
          child: Image.asset("assets/imagens/melancia.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("banana");
          },
          child: Image.asset("assets/imagens/banana.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("maca");
          },
          child: Image.asset("assets/imagens/maca.png"),
        ),
      ],
    );
  }
}
