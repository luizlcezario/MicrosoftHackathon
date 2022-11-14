import 'package:flutter/material.dart';

class FeedBacks extends StatefulWidget {
  FeedBacks({
    super.key,
    required this.name,
    required this.image,
    required this.text,
    required this.score,
    this.avaliator: "",
    this.project: "",
  });

  final String name;
  final String image;
  final String text;
  String avaliator;
  String project;
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
              backgroundImage: NetworkImage(widget.image == ""
                  ? "https://i.pinimg.com/originals/99/4c/ca/994ccaef22db396d4d05d569ec35a207.png"
                  : widget.image),
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
        widget.avaliator != "" && widget.project != ""
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Avaliado por: " + widget.avaliator,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                    Text(
                      "Projeto: " + widget.project,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                  ],
                ),
              )
            : Container(),
      ]),
    );
  }
}
