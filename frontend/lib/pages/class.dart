import 'package:flutter/material.dart';
import 'package:frontend/pages/students_page.dart';
import '../components/sanduiche.dart';
import './students_page.dart';

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
          "name": "Ana Clara",
          "img": "",
        },
        {
          "name": "Beatriz",
          "img": "",
        },
        {
          "name": "Eduardo",
          "img": "",
        },
        {
          "name": "Fabrício",
          "img": "../../assets/images/profile.jpeg",
        },
        {
          "name": "Felipe",
          "img": "",
        },
        {
          "name": "Maria Eduarda",
          "img": "",
        },
        {
          "name": "João Vitor",
          "img": "",
        },
        {
          "name": "Matheus",
          "img": "",
        },
        {
          "name": "Júlia",
          "img": "",
        },
        {
          "name": "Gustavo",
          "img": "",
        },
      ]
    },
    {
      'name': "Sala 2",
      'student': [
        {
          "name": "Thais",
          "img":
              "https://live.staticflickr.com/65535/52493008232_1dc3e0fcb3_s.jpg",
        },
        {
          "name": "Victor",
          "img": "",
        },
        {
          "name": "Michael",
          "img":
              "https://live.staticflickr.com/65535/52497723656_7f881fe4d0_s.jpg",
        },
        {
          "name": "Vitória",
          "img":
              "https://live.staticflickr.com/65535/52495408113_2e65a6b5c4_s.jpg",
        },
        {
          "name": "Ana Paula",
          "img": "",
        },
        {
          "name": "Alan",
          "img": "",
        },
        {
          "name": "Jorge",
          "img":
              "https://live.staticflickr.com/65535/52498211570_7ed319a245_w.jpg",
        },
        {
          "name": "Rógerio",
          "img": "",
        },
        {
          "name": "Gabriel",
          "img":
              "https://live.staticflickr.com/65535/52498206100_6010ca666a_t.jpg",
        },
        {
          "name": "Mariana",
          "img":
              "https://live.staticflickr.com/65535/52475686753_9c35a905d8.jpg",
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
      body: SingleChildScrollView(
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
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(161, 215, 233, 1),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StudentPage(
                                          name: aluno['name'],
                                          img: aluno['img'] == ''
                                              ? "https://i.pinimg.com/originals/99/4c/ca/994ccaef22db396d4d05d569ec35a207.png"
                                              : aluno['img'])),
                                );
                              },
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(aluno[
                                                'img'] ==
                                            ""
                                        ? "https://i.pinimg.com/originals/99/4c/ca/994ccaef22db396d4d05d569ec35a207.png"
                                        : aluno['img']),
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
                            ))
                        : Container();
                  }).toList());
            }).toList(),
          ),
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
