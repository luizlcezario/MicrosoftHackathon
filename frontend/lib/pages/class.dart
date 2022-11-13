import 'package:flutter/material.dart';
import '../main.dart';
import 'exercises.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({super.key});

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
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
            ),
            ListTile(
                leading: Icon(Icons.data_exploration_rounded),
                title: Text('Exercícios'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ExercisesPage()));
                }),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Salas'),
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
