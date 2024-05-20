import 'package:examui/after_logged.dart';
import 'package:examui/models/product.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MostInInside extends StatelessWidget {
  SingleProduct product;
  MostInInside(this.product, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.all(25),
          child: IconButton(
              onPressed: () {
                print("salom");
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              width: 205,
              height: 225,
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(40),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      product.style,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Gap(30),
                  Text(product.price,
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
            )
          ],
        ),
      ),
    );
  }
}
