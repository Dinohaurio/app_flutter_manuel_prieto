import 'package:flutter/material.dart';
import 'package:app_flutter_manuel_prieto/LigaEsp.dart';

class SerieA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        header(),
        Expanded(
          child: SingleChildScrollView(
            child: list(),
          ),
        ),
      ],
    );
  }
}

Widget header() {
  return Stack(
    children: <Widget>[
      Container(
          height: 100.0,
          width: double.infinity, //all width
          child: Image.network('https://lh3.googleusercontent.com/proxy/ZXWHvuncJD_munFsDGKrl_tzyEhdE16w8zq77qEVGky6F4QJVN_uwZ9NisHmpUSd5vfwlsHKLlydUuEbVDtaNuc8TFycvqIXaReLdLyjzq-mG7jmLEduR7Iq9wQ',
            fit: BoxFit.cover,
          )),
      Container(
        height: 100.0,
        width: double.infinity,
        color: Colors.black38,
      ),
      Positioned(
        right: 8.0,
        bottom: 8.0,
        child: Text(
          '20/21',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ],
  );
}

Widget list() {
  return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: <Widget>[
            teamWidget('https://logodetimes.com/times/juventus-football-club/juventus-football-club-256.png', 'Juventus FC', '78 Pts'),
            teamWidget('https://logodetimes.com/times/associazione-calcio-milan/associazione-calcio-milan-256.png', 'Milan FC', '68 Pts'),
            teamWidget('https://logodetimes.com/times/football-club-internazionale-milano/football-club-internazionale-milano-256.png', 'Inter Milan FC', '62 Pts'),
            teamWidget('https://logodetimes.com/times/associazione-sportiva-roma/associazione-sportiva-roma-256.png', 'Roma FC', '60 Pts'),
            teamWidget('https://logodetimes.com/times/societa-sportiva-calcio-napoli/societa-sportiva-calcio-napoli-256.png', 'Naploes FC', '55 Pts'),
            teamWidget('https://logodetimes.com/times/societa-sportiva-lazio/societa-sportiva-lazio-256.png', 'Lazio FC', '40 Pts'),
            teamWidget('https://logodetimes.com/times/atalanta-bergamasca-calcio/atalanta-bergamasca-calcio-256.png', 'Atalanta FC', '35 Pts'),
            teamWidget('https://logodetimes.com/times/associazione-calcio-firenze-fiorentina/associazione-calcio-firenze-fiorentina-256.png', 'Fiorentina FC', '33 Pts'),
          ],
        ),
      ));
}