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
          title: Center(
        child: Image(width: 100, image: AssetImage('assets/Logo.png')),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FeedBacks(
                name: "Michael",
                image: 'https://picsum.photos/200/300',
                text: 'Gostei muito da aula prof<3',
                score: 10),
            FeedBacks(
                name: "Gabriel",
                image: 'img',
                text: 'Aula foi produtiva!',
                score: 10),
            FeedBacks(
                name: "Thais",
                image: 'img',
                text: 'Obrigado pela ajuda :)',
                score: 10),
            FeedBacks(
                name: "Vitória",
                image: 'img',
                text: 'Me ajudou muito!',
                score: 10),
            FeedBacks(
                name: "Jorge",
                image: 'img',
                text: 'Gostei da atividade!',
                score: 10),
            FeedBacks(
                name: "Mariana",
                image: 'img',
                text: 'Foi divertido c:',
                score: 10),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
