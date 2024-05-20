import 'package:examui/class/buttons..dart';
import 'package:examui/class/database.dart';
import 'package:examui/create_accaunt.dart';
import 'package:examui/main_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  bool isHiddein = true;
  String? emailVerification;
  String? passwordVerification;
  TextEditingController emailCheck = TextEditingController();
  TextEditingController passwordCheck = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
        child: Container(
          color: Colors.white10,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome Back",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Welcoma Back! Please Enter Your Details.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Email",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                TextField(
                  controller: emailCheck,
                  decoration: const InputDecoration(
                      hintText: 'Enter Your Email',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide.none)),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text("Password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                TextField(
                  controller: passwordCheck,
                  obscureText: isHiddein,
                  decoration: InputDecoration(
                      hintText: '****************',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            isHiddein = !isHiddein;
                            setState(() {});
                          },
                          icon: Icon(
                            isHiddein == true
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          )),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide.none)),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Remember for 30 days",
                          style: TextStyle(color: Colors.grey.shade600),
                        )
                      ],
                    ),
                    const Text(
                      "Forgot password?",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                ImortantButtons(
                  "=",
                  () {
                    if (emailCheck.text.trim().isEmpty ||
                        passwordCheck.text.trim().isEmpty) {
                      if (emailCheck.text.trim().isEmpty) {
                        emailCheck.text = "enter valid email";
                      }
                      if (passwordCheck.text.trim().isEmpty) {
                        passwordCheck.text = "enter vaild password";
                      }
                    } else {
                      if (checkuser(emailCheck.text, passwordCheck.text)) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              contentPadding: const EdgeInsets.all(20),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.check_circle_outline_sharp,
                                    color: Colors.green[600],
                                    size: 60,
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Successfully logged in",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => (MainPage()),
                                      ),
                                    );
                                  },
                                  child: const Text("Log in"),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        // showModalBottomSheet(context: context, builder: builder)
                      }
                    }
                    setState(() {});
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/google.png",
                        scale: 2,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Sign In With Google",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan(
                          text: " Sign Up For Free",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Register(),
                                ),
                              );
                            },
                          style: const TextStyle(
                            color: Colors.black,
                            decorationColor: Colors.black,
                            decorationThickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

bool checkuser(String email, String password) {
  print(Database.user);

  for (var i = 0; i < Database.user.length; i++) {
    if (email == Database.user[i]["email"] &&
        password == Database.user[i]["password"]) {
      return true;
    }
  }
  return false;
}
