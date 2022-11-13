import 'package:flutter/material.dart';
import 'components/sanduiche.dart';
import 'components/feedbacks.dart';

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
      drawer: Sanduiche(path: 'Feedback'),
      appBar: AppBar(
          title: Center(
        child: Image(width: 100, image: AssetImage('assets/Logo.png')),
      )),
      body: Center(
        child: Column(
          children: <Widget>[
            FeedBacks(
                name: "Luiz Lima",
                image: 'assets/llima-ce.jpeg',
                text: 'gostei muito da aula prof<3',
                score: 10),
            FeedBacks(
                name: "Luiz Lima",
                image: 'assets/llima-ce.jpeg',
                text: 'gostei muito da aula prof<3',
                score: 10),
            FeedBacks(
                name: "Luiz Lima",
                image: 'assets/llima-ce.jpeg',
                text: 'gostei muito da aula prof<3',
                score: 10),
            FeedBacks(
                name: "Luiz Lima",
                image: 'assets/llima-ce.jpeg',
                text: 'gostei muito da aula prof<3',
                score: 10),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
