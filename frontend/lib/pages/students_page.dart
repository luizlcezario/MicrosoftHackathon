import "package:flutter/material.dart";
import "../components/sanduiche.dart";
import "../components/feedbacks.dart";

class StudentPage extends StatefulWidget {
  const StudentPage({super.key, required this.name, required this.img});

  final String name;
  final String img;

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  Map student = {
    "feedbacks": [
      {
        'avaliator': 'João',
        "score": 10,
        "project": "lista 1",
        "text": "Gostei muito da aula prof<3",
      },
      {
        'avaliator': 'Maria',
        "project": "lista 1",
        "score": 10,
        "text": "Aula foi produtiva!",
      },
      {
        'avaliator': 'Daniel',
        "project": "lista 2",
        "score": 10,
        "text": "Obrigado pela ajuda :)",
      },
      {
        'avaliator': 'Alex',
        "project": "lista 2",
        "score": 10,
        "text": "Foi divertido c:",
      },
      {
        'avaliator': 'Roberto',
        "project": "lista 2",
        "score": 10,
        "text": "Me ajudou muito!",
      },
      {
        'avaliator': 'Júlia',
        "project": "lista 2",
        "score": 10,
        "text": "Gostei da atividade :)",
      },
    ],
    "badges": [
      {
        "name": "badge 1",
        "description": "badge 1 description",
        "image": "assets/badge1.png",
      },
      {
        "name": "badge 2",
        "description": "badge 2 description",
        "image": "assets/badge2.png",
      },
    ],
  };

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sanduiche(path: 'Feedback'),
      appBar: AppBar(
        title: Text('Exercicíos'),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Stack(children: <Widget>[
            Image(image: NetworkImage(widget.img)),
            Center(child: Text(widget.name)),
          ]),
          Column(
            children: student['feedbacks'].map<Widget>((feed) {
              return FeedBacks(
                  image: widget.img,
                  name: widget.img,
                  score: feed["score"],
                  text: feed["text"],
                  project: feed["project"],
                  avaliator: feed["avaliator"]);
            }).toList(),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: student['badges'].map<Widget>((badge) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Image(image: AssetImage(badge["image"])),
                      Text(badge["name"]),
                      Text(badge["description"]),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
