import 'package:flutter/material.dart';
import 'package:getx_authentication/widget/widget_button.dart';
import 'package:getx_authentication/widget/widget_input_field.dart';
import 'package:getx_authentication/widget/widget_social_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF3632D5),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: height * 0.3,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF8F8CFE), Color(0xFF3632D5)],
                      begin: Alignment.topRight,
                      end: Alignment(0.6, 0.9),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.1),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /// Back Button with Navigation
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: const Icon(
                                Icons.keyboard_arrow_left_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFF8F8CFE),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Get Started",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.3 / 2,
                        child: Center(
                          child: Text(
                            "Jobsly",
                            style: GoogleFonts.aBeeZee(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /* Positioned(
                  left: 40,
                  right: 40,
                  top: height * 0.2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: Container(
                      height: height * 0.02,
                      decoration: const BoxDecoration(
                        color: Color(0xFF7571E2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                    ),
                  )),*/
                Container(
                  // height: height * 0.68,
                  height: height * 0.7,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        Text(
                          "Welcome Back",
                          style: GoogleFonts.poppins(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Enter your details below",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 30),
                        /*  Card(
                          elevation: 0,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                              color: Color(0xFFE5E5E5),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                label: Text("Email Address"),
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.email),
                              ),
                            ),
                          ),
                        ),*/

                        const WidgetInputField(
                          label: "Password",
                          icon: Icons.lock,
                        ),
                        const SizedBox(height: 16),
                        const WidgetInputField(
                          label: "Email Address",
                          icon: Icons.email,
                        ),
                        const SizedBox(height: 16),
                        /* Card(
                          elevation: 0,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                              color: Color(0xFFE5E5E5),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                label: Text("Password"),
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock),
                              ),
                            ),
                          ),
                        ),*/
                        const SizedBox(height: 20),
                        WidgetButton(
                          title: "Sign In",
                          onTap: () {},
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Forgot your password?",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            const Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                                endIndent:
                                10, // Reduced indent for better balance
                              ),
                            ),
                            Text(
                              "OR Sign In with",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            const Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                                indent: 10, // Reduced indent for better balance
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            WidgetSocialButton(
                              title: "Google",
                              image: "assets/google.png",
                              width: width * 0.4,
                              onTap: () {},
                            ),
                            WidgetSocialButton(
                              title: "Facebook",
                              image: "assets/facebook.png",
                              width: width * 0.4,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
