import 'package:examui/class/most_inter_in.dart';
import 'package:examui/class/most_interested.dart';
import 'package:examui/class/popular.dart';
import 'package:examui/models/product.dart';
import 'package:flutter/material.dart';

class AfterLogged extends StatefulWidget {
  @override
  State<AfterLogged> createState() => _AfterLoggedState();
}

class _AfterLoggedState extends State<AfterLogged> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 40, left: 25, right: 25, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("images/afterlogin/avatar.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome,",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Besnik Doe,",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/afterlogin/bell.png",
                        scale: 1.2,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        "images/afterlogin/search.png",
                        scale: 1.5,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Search Furniture",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/afterlogin/filter.png",
                        scale: 1.2,
                      ))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(24),
              child: Text(
                "Special Offers",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                textAlign: TextAlign.left,
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(27),
                    width: 270,
                    height: 165,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage("images/afterlogin/interior.png"),
                            fit: BoxFit.cover)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "25% Discount",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        const Text(
                          "For a cozy yellow set!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(
                                    Color(0xFF0c8a7b))),
                            onPressed: () {},
                            child: const Text("Learn More",
                                style: TextStyle(
                                  color: Colors.white,
                                )))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    padding: EdgeInsets.all(20),
                    width: 270,
                    height: 165,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image:
                                AssetImage("images/afterlogin/interior2.png"),
                            fit: BoxFit.cover)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "35% Discount",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        const Text(
                          "For a cozy yellow set!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(
                                    Color(0xFF0c8a7b))),
                            onPressed: () {},
                            child: const Text("Shop Now",
                                style: TextStyle(
                                  color: Colors.white,
                                )))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset("images/afterlogin/iconsofa.png"),
                        const Text(
                          "Armchair",
                          style: TextStyle(),
                        )
                      ],
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Interested",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "View",
                    style: TextStyle(
                      color: Color(0xFFf2a666),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var i = 0; i < 10; i++)
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => MostInInside(
                                      SingleProducts.products[i % 2])));
                        },
                        child: MostInterested(SingleProducts.products[i % 2]))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "View",
                    style: TextStyle(
                      color: Color(0xFFf2a666),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var i = 0; i < 10; i++)
                    i % 2 == 0
                        ? Popular("greystol", "Swoon Lounge", "Regal Do Lobo",
                            "\$136.79")
                        : Popular("sariqstol", "Swoon Lounge", "Regal Do Lobo",
                            "\$283.39")
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.grey),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
        // currentIndex: selectedIndex,
        // onTap: onItemTapped,
      ),
    );
  }
}
