import 'package:flutter/material.dart';

class LigaEsp extends StatelessWidget {
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


  Widget header(){
    return Stack(
      children: <Widget>[
        Container(
            height: 100.0,
            width: double.infinity, //all width
            child: Image.network('https://media.contentapi.ea.com/content/dam/ea/fifa/fifa-22/news/common/ratings-reveal/ratings-reveal-laliga-santander/laliga-featured-image-16x9.png.adapt.crop191x100.628p.png',
              fit: BoxFit.cover,
            )
        ),
        Container(
          height: 100.0,
          width: double.infinity,
          color: Colors.black38,
        ),
        Positioned(
          right: 8.0,
          bottom: 8.0,
          child: Text('20/21',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  Widget list(){
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
            child: Column(
              children: <Widget>[
                teamWidget('https://logodetimes.com/times/barcelona/logo-barcelona-256.png','FC Barcelona', '78 Pts'),
                teamWidget('https://logodetimes.com/times/real-madrid/logo-real-madrid-escudo-256.png', 'Real Madrid','68 Pts'),
                teamWidget('https://logodetimes.com/times/sevilla/logo-sevilla-256.png','Sevilla FC', '62 Pts'),
                teamWidget('https://logodetimes.com/times/villarreal/logo-villarreal-256.png','Villarreal CF', '60 Pts'),
                teamWidget('https://logodetimes.com/times/valencia/logo-valencia-256.png','Valencia CF', '55 Pts'),
                teamWidget('https://logodetimes.com/times/granada/logo-granada-256.png', 'Granada CF','40 Pts'),
                teamWidget('https://logodetimes.com/times/elche/logo-elche-256.png','Elche CF', '35 Pts'),
                teamWidget('https://logodetimes.com/times/rayo-vallecano/logo-rayo-vallecano-256.png','Rayo Vallecano', '33 Pts'),
              ],
            ),
        )
    );
  }

  Widget teamWidget(String imageUrl, String team, String pnts){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.network(
              imageUrl,
              width: 50,
              height: 50,
            ),
            Text(team),
            Text(pnts)
          ],
        ),
      ),
    );
  }
