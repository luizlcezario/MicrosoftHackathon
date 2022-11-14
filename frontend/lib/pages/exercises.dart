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
          "image": "./assets/images/lista1.png",
          "answer": 6,
        },
      ],
    },
    {
      "name": "lista 2",
      "exercises": [
        {
          "header":
              "Alice ganhou 3 anéis. Sua mãe comprou mais 5. Com quantos anéis Alice ficou?",
          "image": "./assets/images/lista2.png",
          "answer": 8,
        },
      ],
    },
    {
      "name": "lista 3",
      "exercises": [
        {
          "header":
              "Ana Clara comprou 6 doces. E já comeu 4. Quantos doces sobraram?",
          "image": "./assets/images/lista3.png",
          "answer": 2,
        },
      ],
    },
    {
      "name": "lista 4",
      "exercises": [
        {
          "header":
              "Luiz ganhou 4 livros. E já leu 1. Quantos livros restam ler?",
          "image": "./assets/images/lista4.png",
          "answer": 3,
        },
      ],
    }
  ];
  var dropdownValue = "lista 1";
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sanduiche(path: 'Exercicíos'),
      appBar: AppBar(
        title: Text('Exercicíos'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                color: Color.fromRGBO(161, 215, 233, 1),
                child: DropdownButton<String>(
                    isExpanded: true,
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(color: Colors.white),
                    underline: Container(
                      height: 2,
                      color: Color.fromRGBO(161, 215, 233, 1),
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: exercise.map((sala) {
                      return DropdownMenuItem<String>(
                        value: sala['name'],
                        child: Center(
                            child: Text(
                          sala['name'],
                          style: TextStyle(color: Colors.black),
                        )),
                      );
                    }).toList())),
            Divider(
              height: 40,
              color: Colors.black,
              thickness: 1,
            ),
            Flex(
              direction: Axis.vertical,
              children: exercise.map<Widget>((ex) {
                return dropdownValue == ex["name"]
                    ? Flex(
                        direction: Axis.vertical,
                        children: ex['exercises'].map<Widget>((e) {
                          return Flex(direction: Axis.vertical, children: [
                            Container(
                              margin: EdgeInsets.only(
                                  right: 20, left: 20, bottom: 20),
                              child: Text(
                                e['header'],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  right: 20, left: 20, bottom: 20),
                              child: Image.asset(e['image']),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  right: 20, left: 20, bottom: 20),
                              child: Text(
                                "resposta " + e["answer"].toString(),
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 20, left: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Editar'),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.blue)),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Deletar'),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.red)),
                                    ),
                                  ],
                                )),
                            Divider(
                              height: 40,
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ]);
                        }).toList())
                    : Container();
              }).toList(),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Adicionar um novo exercicio'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
