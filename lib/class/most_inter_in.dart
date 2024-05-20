import 'package:examui/after_logged.dart';
import 'package:examui/class/buttons..dart';
import 'package:examui/models/product.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MostInInside extends StatefulWidget {
  SingleProduct product;

  MostInInside(this.product, {super.key});

  @override
  State<MostInInside> createState() => _MostInInsideState();
}

class _MostInInsideState extends State<MostInInside> {
  int count = 0;
  double total = 0;

  @override
  Widget build(BuildContext context) {
    double parsedPrice = double.parse(widget.product.price);

    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 100,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        actions: [
          IconButton(
            onPressed: () {
              widget.product.islike = !widget.product.islike;
              setState(() {});
            },
            icon: widget.product.islike
                ? const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : const Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 205,
              height: 225,
              child: Image.asset(
                widget.product.image,
                fit: BoxFit.contain,
              ),
            ),
            const Gap(40),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.product.style,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Gap(30),
                      Text(widget.product.price,
                          style: TextStyle(
                            color: Color(0xFFf2a666),
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.person_2_outlined, color: Colors.grey),
                            Text(
                              "321 Seen",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Gap(10),
                            Icon(Icons.favorite_outline, color: Colors.grey),
                            Text(
                              "2048 Liked",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Gap(10),
                        Container(
                            width: 190,
                            height: 21,
                            child: Image.asset(
                              "images/afterlogin/stars.png",
                              fit: BoxFit.contain,
                            ))
                      ],
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment(0.4, 0),
                            child: Container(
                              width: 40,
                              height: 40,
                              child: Image.asset(
                                  "images/afterlogin/circle_avatar1.png"),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.7, 0),
                            child: Container(
                              width: 40,
                              height: 40,
                              child: Image.asset(
                                  "images/afterlogin/circle_avatar2.png"),
                            ),
                          ),
                          Align(
                            alignment: Alignment(1, 0),
                            child: Container(
                              width: 40,
                              height: 40,
                              child: Image.asset(
                                  "images/afterlogin/circle_avatar3.png"),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(widget.product.description),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                            CircleBorder(side: BorderSide.none)),
                        backgroundColor: WidgetStateProperty.all<Color>(
                            Colors.grey.shade300),
                      ),
                      onPressed: () {
                        setState(() {
                          if (total >= parsedPrice) {
                            count--;
                            total -= parsedPrice;
                          }
                        });
                      },
                      child: const Text(
                        "-",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text('$count'),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                            CircleBorder(side: BorderSide.none)),
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Color(0xFF0c8a7b)),
                      ),
                      onPressed: () {
                        setState(() {
                          count++;
                          total += parsedPrice;
                        });
                      },
                      child: const Text(
                        "+",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Text("Total: \$${total.toStringAsFixed(2)}"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ImortantButtons("Add To Card", () {
                SingleProducts.card
                    .add({"item": widget.product, "count": count});
              }),
            )
          ],
        ),
      ),
    );
  }
}
