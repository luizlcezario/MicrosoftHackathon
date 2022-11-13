import 'package:flutter/material.dart';

class FeedBacks extends StatefulWidget {
  const FeedBacks(
      {super.key,
      required this.name,
      required this.image,
      required this.text,
      required this.score});

  final String name;
  final String image;
  final String text;
  final int score;
  @override
  State<FeedBacks> createState() => _FeedBakcksState();
}

class _FeedBakcksState extends State<FeedBacks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 40, left: 40, top: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(161, 215, 233, 1),
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.image),
            ),
            Text(
              widget.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.face_outlined),
              Text(widget.text),
            ],
            
          ),
        ),
      ]),
    );
  }
}
