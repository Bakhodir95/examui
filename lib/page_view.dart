import 'package:examui/class/buttons..dart';
import 'package:examui/login_page.dart';
import 'package:flutter/material.dart';

class PageViews extends StatefulWidget {
  const PageViews({super.key});

  @override
  State<PageViews> createState() => _PageViewsState();
}

class _PageViewsState extends State<PageViews> {
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
                image: "images/first.png",
                text:
                    "View And Exprience Furniture With The Help Of Augmented Reality",
                index: pageindex,
              ),
              Widgetonbording(
                image: "images/second.png",
                text:
                    "Design Your Space With Augmented Reality By Creating Room",
                index: pageindex,
              ),
              Widgetonbording(
                  image: "images/third.png",
                  text:
                      "Explore World Class Top Furnitures As Per Your Requirements & Choice",
                  index: pageindex)
            ],
          ),
        ),
        pageindex == 2
            ? Padding(
                padding: const EdgeInsets.all(25),
                child: ImortantButtons("Get Started", () {
                  return Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage()));
                }),
              )
            : Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage()));
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 16),
                        )),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
                        backgroundColor:
                            WidgetStateProperty.all(Color(0xFF0c8a7b)),
                        shape: WidgetStateProperty.all(
                          CircleBorder(
                            side: BorderSide(style: BorderStyle.none),
                          ),
                        ),
                      ),
                      onPressed: () {
                        controller.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.bounceOut,
                        );
                        if (pageindex == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (LoginPage())),
                          );
                        }
                        print(controller);
                        setState(() {});
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        weight: 10,
                      ),
                    )
                  ],
                ),
              )
      ],
    ));
  }
}

class Widgetonbording extends StatelessWidget {
  int index;
  String image;
  String text;
  Widgetonbording(
      {super.key,
      required this.image,
      required this.index,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        padding: EdgeInsets.only(top: 50),
        width: double.infinity,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 7,
            backgroundColor: index == 0 ? Color(0xFF0c8a7b) : null,
          ),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 7,
            backgroundColor: index == 1 ? Color(0xFF0c8a7b) : null,
          ),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 7,
            backgroundColor: index == 2 ? const Color(0xFF0c8a7b) : null,
          ),
        ],
      ),
    ]);
  }
}
