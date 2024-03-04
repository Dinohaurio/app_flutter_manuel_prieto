import 'package:flutter/material.dart';
import 'package:app_flutter_manuel_prieto/LigaEsp.dart';

class PremierLeague extends StatelessWidget {
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
          child: Image.network('https://transfery.info/img/photos/76947/1500xauto/premier-league.jpg',
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
        teamWidget('https://logodetimes.com/times/manchester-city-football-club/manchester-city-football-club-256.png', 'Manchester City FC', '78 Pts'),
        teamWidget('https://logodetimes.com/times/liverpool-football-club/liverpool-football-club-256.png', 'Liverpool FC', '68 Pts'),
        teamWidget('https://logodetimes.com/times/arsenal-football-club/arsenal-football-club-256.png', 'Arsenal FC', '62 Pts'),
        teamWidget('https://logodetimes.com/times/chelsea-football-club/chelsea-football-club-256.png', 'Chelsea FC', '60 Pts'),
        teamWidget('https://logodetimes.com/times/manchester-united-football-club/manchester-united-football-club-256.png', 'Manchester United FC', '55 Pts'),
        teamWidget('https://logodetimes.com/times/tottenham-hotspur-football-club/tottenham-hotspur-football-club-256.png', 'Tottenham Hotspur FC', '40 Pts'),
        teamWidget('https://logodetimes.com/times/newcastle-united-football-club/newcastle-united-football-club-256.png', 'Newcastle United FC', '35 Pts'),
        teamWidget('https://logodetimes.com/times/everton-football-club/everton-football-club-256.png', 'Everton FC', '33 Pts'),
      ],
    ),
  ));
}

