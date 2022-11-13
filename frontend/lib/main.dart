import 'package:flutter/material.dart';
import 'pages/class.dart';
import 'pages/exercises.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn2peer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
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
                title: Text('Aulas'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ClassPage()),
                  );
                }),
            ListTile(
                leading: Icon(Icons.data_exploration_rounded),
                title: Text('Exercícios'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExercisesPage()),
                  );
                }),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Logo"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 40, left: 40, top: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(161, 215, 233, 1),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/llima-ce.jpeg'),
                    ),
                    Text(
                      'Luiz Lima',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.face_outlined),
                      Text('Gostei da avalicao prof'),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
