import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(children: [Column(children: [Image.asset("images/afterlogin/avatar")],)],),
      ),
    );
  }
}
