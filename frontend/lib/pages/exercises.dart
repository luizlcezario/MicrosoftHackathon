import 'package:flutter/material.dart';
import '../main.dart';
import 'class.dart';

class ExercisesPage extends StatefulWidget {
  const ExercisesPage({super.key});

  @override
  State<ExercisesPage> createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(161, 215, 233, 1),
              ),
              child: Text(
                'LOGO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.class_),
                title: Text('Feedback'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                }),
            ListTile(
                leading: Icon(Icons.class_),
                title: Text('Salas'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ClassPage()),
                  );
                }),
            ListTile(
              leading: Icon(Icons.data_exploration_rounded),
              title: Text('Exercícios'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Exercicíos'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 20),
              color: Color.fromRGBO(161, 215, 233, 1),
              child: Column(children: []),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
