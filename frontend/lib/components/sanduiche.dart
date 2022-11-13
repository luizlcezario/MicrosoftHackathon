import 'package:flutter/material.dart';
import '../main.dart';
import '../pages/exercises.dart';
import '../pages/class.dart';

class Sanduiche extends StatefulWidget {
  const Sanduiche({super.key, required this.path});

  final String path;
  @override
  State<Sanduiche> createState() => _SanduicheState();
}

class _SanduicheState extends State<Sanduiche> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromRGBO(161, 215, 233, 1),
          ),
          child: Image(image: AssetImage('assets/Logo.png')),
        ),
        ListTile(
            leading: Icon(Icons.class_),
            title: Text('Feedback'),
            onTap: () {
              widget.path != "Feedback"
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    )
                  : null;
            }),
        ListTile(
            leading: Icon(Icons.class_),
            title: Text('Salas'),
            onTap: () {
              widget.path != "Salas"
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ClassPage()),
                    )
                  : null;
            }),
        ListTile(
            leading: Icon(Icons.data_exploration_rounded),
            title: Text('Exercícios'),
            onTap: () {
              widget.path != "Exercícios"
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExercisesPage()),
                    )
                  : null;
            }),
      ],
    ));
  }
}
