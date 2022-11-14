import "package:flutter/material.dart";
import "../components/sanduiche.dart";
import "../components/feedbacks.dart";
import "./avaliation.dart";

class StudentPage extends StatefulWidget {
  const StudentPage({super.key, required this.name, required this.img});

  final String name;
  final String img;

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  bool avaliacao = false;

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
        "name": "Badge Joaninha",
        "description": "Tenha 3 proveitosas avaliações",
        "image": "assets/badge1.png",
      },
      {
        "name": "Badge Fogo",
        "description": "Consiga 3 Feedbacks divertidos",
        "image": "assets/badge2.png",
      },
      {
        "name": "Badge Girassol",
        "description": "Alcance 6 avaliações calorosas",
        "image": "assets/badge3.png",
      },
      {
        "name": "Badge Coração",
        "description": "Consiga 6 Feedbacks amigáveis",
        "image": "assets/badge4.png",
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
              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
                    Text("Projeto Atual", style: TextStyle(fontSize: 30)),
                    SizedBox(
                      height: 20,
                    ),
                    Flex(
                      mainAxisAlignment: MainAxisAlignment.center,
                      direction: Axis.horizontal,
                      children: [
                        Icon(
                          Icons.picture_as_pdf_outlined,
                          size: 50,
                          color: Colors.red,
                        ),
                        Text(
                          "Lista_3.pdf",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.all(20)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Avaliation(
                                        img: widget.img,
                                        name: widget.name,
                                      )));
                        },
                        child: Text(
                          "Avaliar",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  ]))),
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
