import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF9F9F9),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Profile",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Center(
                child: Column(
                  children: <Widget>[
                    Gap(24),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/person.jpeg"),
                    ),
                    Gap(12),
                    Text(
                      "Mansurul Hoque",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff101817)),
                    ),
                    Text(
                      "mansurul952@gmail.com",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff828A89)),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.white),
                        child: const Row(
                          children: [
                            Icon(
                              CupertinoIcons.person_alt_circle,
                              color: Color(0xff828A89),
                              size: 30,
                            ),
                            Gap(12),
                            Text(
                              "Profile",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.white),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.payment_rounded,
                              color: Color(0xff828A89),
                              size: 30,
                            ),
                            Gap(12),
                            Text(
                              "Payment Methods",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.white),
                        child: const Row(
                          children: [
                            Icon(
                              CupertinoIcons.rectangle_stack_fill_badge_plus,
                              color: Color(0xff828A89),
                              size: 30,
                            ),
                            Gap(12),
                            Text(
                              "Order history",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.white),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.delivery_dining,
                              color: Color(0xff828A89),
                              size: 30,
                            ),
                            Gap(12),
                            Text(
                              "Delivery Address",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.white),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.grid_3x3_outlined,
                              color: Color(0xff828A89),
                              size: 30,
                            ),
                            Gap(12),
                            Text(
                              "Support Center",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.white),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.security_outlined,
                              color: Color(0xff828A89),
                              size: 30,
                            ),
                            Gap(12),
                            Text(
                              "Legal Policy ",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(60),
              const Text(
                "Log Out",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.red),
              ),
              Gap(20)
            ],
          ),
        ));
  }
}
