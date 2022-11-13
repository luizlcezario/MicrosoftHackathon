import 'package:flutter/material.dart';
import '../components/sanduiche.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({super.key});

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  List<String> list = <String>['Sala 2', 'Sala 3'];
  List salas = [
    {
      'name': "Sala 1",
      'student': [
        {
          "name": "luiz lima a",
          "img": "img",
        },
        {
          "name": "luiz lima b",
          "img": "img",
        },
      ]
    },
    {
      'name': "Sala 2",
      'student': [
        {
          "name": "luiz lima z",
          "img": "img",
        },
        {
          "name": "luiz lima c",
          "img": "img",
        },
      ]
    }
  ];

  String dropdownValue = "Sala 2";

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sanduiche(path: 'Salas'),
      appBar: AppBar(
        title: Text('Salas'),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20, left: 20, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(161, 215, 233, 1),
            ),
            child: Column(children: [
              DropdownButton<String>(
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
                  items: salas.map((sala) {
                    return DropdownMenuItem<String>(
                      value: sala['name'],
                      child: Center(
                          child: Text(
                        sala['name'],
                        style: TextStyle(color: Colors.black),
                      )),
                    );
                  }).toList())
            ]),
          ),
          Divider(
            height: 60,
            color: Colors.black,
            thickness: 1,
          ),
          Flex(
            direction: Axis.vertical,
            children: salas.map<Widget>((e) {
              return Flex(
                  direction: Axis.vertical,
                  children: e["student"].map<Widget>((aluno) {
                    return e['name'] == dropdownValue
                        ? Container(
                            margin:
                                EdgeInsets.only(right: 20, left: 20, top: 20),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(161, 215, 233, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(aluno['img']),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(
                                    aluno["name"],
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                          )
                        : Container();
                  }).toList());
            }).toList(),
          )
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
