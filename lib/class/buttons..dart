import 'package:flutter/material.dart';

class ImortantButtons extends StatefulWidget {
  Function() onpressed;
  String text;
  ImortantButtons(this.text, this.onpressed);

  @override
  State<ImortantButtons> createState() => _ImortantButtonsState();
}

class _ImortantButtonsState extends State<ImortantButtons> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF0c8a7b)),
        ),
        onPressed: widget.onpressed,
        child: Text(
          widget.text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
