import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  List<Map<String, dynamic>> added_card = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shopping",
          style: TextStyle(fontSize: 25),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
      ),
    );
  }
}

class CardWidget extends StatefulWidget {
  Map<String, dynamic> cardlar = {};
  CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: widget.cardlar["name"],
        ),
        Column(
            // children: [Text()],
            )
      ],
    );

    ;
  }
}
