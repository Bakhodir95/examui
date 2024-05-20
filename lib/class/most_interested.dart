import 'package:examui/models/product.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MostInterested extends StatelessWidget {
  SingleProduct product;
  MostInterested(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: 200,
        height: 230,
        child: Image.asset(
          product.image,
          fit: BoxFit.contain,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  product.type,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            const Gap(30),
            Container(
              padding: EdgeInsets.all(7),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF0c8a7b),
              ),
              child: Image.asset(
                "images/afterlogin/savat.png",
                scale: 1.2,
                // fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          product.price,
          style: const TextStyle(
            color: Color(0xFFf2a666),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ]);
  }
}
