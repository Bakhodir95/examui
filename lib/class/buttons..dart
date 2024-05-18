import 'package:flutter/material.dart';

class ImortantButtons extends StatefulWidget {
  Function onpressed;
  String text;
  ImortantButtons(this.text,this.onpressed);

  @override
  State<ImortantButtons> createState() => _ImortantButtonsState();
}

class _ImortantButtonsState extends State<ImortantButtons> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(side: BorderSide.none)),
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0c8a7b)),
        ),
        onPressed: widget.onpressed(),
        child: Text(
          widget.text,
          style: TextStyle(color: Colors.white),
        ));
  }
}
