import 'package:examui/class/buttons..dart';
import 'package:examui/page_view.dart';
import 'package:flutter/material.dart';

class EntranceEmail extends StatefulWidget {
  @override
  State<EntranceEmail> createState() => _EntranceEmailState();
}

class _EntranceEmailState extends State<EntranceEmail> {
  PageController controller = PageController();

  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView(
            controller: controller,
            onPageChanged: (value) {
              pageindex = value;
              print("Salom$value");
              setState(() {});
            },
            children: [
              Widgetonbording(
                  image: "images/third.png",
                  text:
                      "Explore World Class Top Furnitures As Per Your Requirements & Choice",
                  index: pageindex)
            ],
          ),
        ),
        ImortantButtons('Get Started', () {})
      ],
    ));
  }
}
