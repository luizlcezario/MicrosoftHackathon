import 'package:flutter/material.dart';
import '../components/sanduiche.dart';

class ExercisesPage extends StatefulWidget {
  const ExercisesPage({super.key});

  @override
  State<ExercisesPage> createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  List exercise = [
    {
      "name": "lista 1",
      "exercises": [
        {
          "header":
              "Adriano tem 4 carrinhos. E Samuel tem 2. Quantos carrinhos os 2 tem juntos?",
          "image": "./assets/images/lista1car.jpeg",
          "answer": 6,
        },
      ],
    },
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sanduiche(path: 'Feedback'),
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
