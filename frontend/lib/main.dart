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
      title: 'Peer2Learn',
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
          toolbarHeight: 90,
          title: Center(
            child: Image(width: 80, image: AssetImage('assets/Logo.png')),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FeedBacks(
                name: "Michael",
                image:
                    'https://live.staticflickr.com/65535/52497723656_7f881fe4d0_s.jpg',
                text: 'Gostei muito da aula prof<3',
                score: 10),
            FeedBacks(
                name: "Gabriel",
                image:
                    'https://live.staticflickr.com/65535/52498206100_6010ca666a_t.jpg',
                text: 'Aula foi produtiva!',
                score: 10),
            FeedBacks(
                name: "Thais",
                image:
                    'https://live.staticflickr.com/65535/52493008232_1dc3e0fcb3_s.jpg',
                text: 'Obrigado pela ajuda :)',
                score: 10),
            FeedBacks(
                name: "Vitória",
                image:
                    'https://live.staticflickr.com/65535/52495408113_2e65a6b5c4_s.jpg',
                text: 'Me ajudou muito!',
                score: 10),
            FeedBacks(
                name: "Jorge",
                image:
                    'https://live.staticflickr.com/65535/52498211570_7ed319a245_w.jpg',
                text: 'Gostei da atividade!',
                score: 10),
            FeedBacks(
                name: "Mariana",
                image:
                    'https://live.staticflickr.com/65535/52475686753_9c35a905d8.jpg',
                text: 'Foi divertido c:',
                score: 10),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
