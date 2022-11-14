import 'package:flutter/material.dart';
import 'package:frontend/pages/students_page.dart';
import '../components/sanduiche.dart';

class Avaliation extends StatefulWidget {
  const Avaliation({super.key, required this.name, required this.img});

  final String name;
  final String img;
  @override
  State<Avaliation> createState() => _AvaliationState();
}

class _AvaliationState extends State<Avaliation> {
  List feedback = [
    {
      "emoji": "assets/emoji1.png",
      'status': false,
      'value': "5",
    },
    {
      "emoji": "assets/emoji2.png",
      'status': false,
      'value': "4",
    },
    {
      "emoji": "assets/emoji3.png",
      'status': false,
      'value': "3",
    },
    {
      "emoji": "assets/emoji4.png",
      'status': false,
      'value': "2",
    },
    {
      "emoji": "assets/emoji5.png",
      'status': false,
      'value': "1",
    }
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Sanduiche(path: 'Avaliation'),
        appBar: AppBar(
          title: Text('Avaliador: Maria Julia'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Text("Como foi a avaliacao?",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Container(
                    margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                    height: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: feedback.map((item) {
                        return Image(
                          width: 50,
                          height: 50,
                          image: AssetImage(
                            item["emoji"],
                          ),
                        );
                      }).toList(),
                    )),
                Container(
                    margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Comentario',
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Nota',
                          ),
                        )
                      ],
                    )),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentPage(
                                img: widget.img,
                                name: widget.name,
                              )),
                    );
                  },
                  child: Text('Enviar'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                )
              ],
            ),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
