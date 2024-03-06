import 'package:flutter/material.dart';
import 'package:pathway_admin/app/core/colors/colors.dart';
import 'package:pathway_admin/app/pages/main_screen.dart';
import 'package:pathway_admin/app/pages/widget/email_textfield.dart';
import 'package:pathway_admin/app/pages/widget/password_textfiel.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
              flex: 5,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80, right: 80),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Welcome back",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Please enter your deatile",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 40),
                          BuilderTextFieldEmail(
                            controller: emailController,
                            prifixIcon: Icons.email,
                            validator: (value) {
                              return;
                            },
                          ),
                          const SizedBox(height: 15),
                          BuilderTextFieldPass(
                            controller: passwordController,
                            hintText: "Password",
                            sufixIcon: true,
                            validationText: "Enter Password",
                            prifixIcon: Icons.lock,
                            validator: (value) {
                              return;
                            },
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  var email = emailController.text;
                                  var password = passwordController.text;
                                  if (email == 'admin@gmail.com' &&
                                      password == '12345678') {
                                    Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                      builder: (context) => const MainScreen(),
                                    ));
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: const Text("login failed"),
                                      backgroundColor: Colors.red[500],
                                    ));
                                  }
                                },
                                style: const ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(18)))),
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.black),
                                ),
                                child: const Text(
                                  'Continue',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    // fontSize: 18
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "PATHWAY",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 6,
              child: Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(18),
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/newLoginImage..png"),
                              fit: BoxFit.cover))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(55),
                        child: Text(
                          "“The way to get started is to quit talking and begin doing.”",
                          style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            background: Paint(),
                            fontSize: 28,
                          ),
                        ),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
