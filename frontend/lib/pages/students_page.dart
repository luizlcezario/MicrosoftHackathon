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
        'avaliator': 'Luiz Lima a',
        "score": 10,
        "project": "lista 1",
        "text": "gostei muito da aula prof<3",
      },
      {
        'avaliator': 'Luiz Lima a',
        "project": "lista 1",
        "score": 10,
        "text": "gostei muito da aula prof<3",
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
      {
        "name": "badge 2",
        "description": "badge 2 description",
        "image": "assets/badge2.png",
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
      drawer: Sanduiche(path: widget.name),
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Center(
              child: Image(
            image: NetworkImage(widget.img),
            fit: BoxFit.fitHeight,
            height: 300,
          )),
          Column(
            children: student['feedbacks'].map<Widget>((feed) {
              return FeedBacks(
                  image: widget.img == ""
                      ? "https://i.pinimg.com/originals/99/4c/ca/994ccaef22db396d4d05d569ec35a207.png"
                      : widget.img,
                  name: widget.name,
                  score: feed["score"],
                  text: feed["text"],
                  project: feed["project"],
                  avaliator: feed["avaliator"]);
            }).toList(),
          ),
          Divider(
            height: 60,
            color: Colors.black,
            thickness: 1,
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
          Divider(
            height: 60,
            color: Colors.black,
            thickness: 1,
          ),
          Center(
              child: Column(
            children: [
              Text("Projeto Atual"),
            ],
          ))
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
