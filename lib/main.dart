import 'package:app_flutter_manuel_prieto/LigaEsp.dart';
import 'package:app_flutter_manuel_prieto/PremierLeague.dart';
import 'package:app_flutter_manuel_prieto/SerieA.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "Primera App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.leaderboard)),
              Tab(icon: Icon(Icons.leaderboard_outlined)),
              Tab(icon: Icon(Icons.leaderboard)),
            ],
          ),
          title: Text('Clasificaciones Ligas'),
        ),
        body: TabBarView(
          children: [LigaEsp(), PremierLeague(), SerieA()],
        ),
      ),
    );
  }
}

