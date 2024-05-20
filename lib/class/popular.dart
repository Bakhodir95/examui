import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Popular extends StatelessWidget {
  String image;
  String name;
  String type;
  String price;

  Popular(this.image, this.name, this.type, this.price, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            "images/afterlogin/$image.png",
            fit: BoxFit.cover,
          ),
        ),
        Gap(10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(type,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  price,
                  style: const TextStyle(
                    color: Color(0xFFf2a666),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
/*   Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: 240,
        height: 270,
        child: Image.asset("images/afterlogin/$image.png"),
      ),
      Padding(
        padding: EdgeInsets.only(left: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text(
                  type,
                  style: const TextStyle(color: Colors.grey),
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
      Text(
        price,
        style: const TextStyle(
          color: Color(0xFFf2a666),
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    */
