import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_authentication/contorller/sign_up_controller.dart';
import 'package:getx_authentication/widget/widget_button.dart';
import 'package:getx_authentication/widget/widget_input_field.dart';
import 'package:getx_authentication/widget/widget_social_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF3632D5),
      body: SingleChildScrollView(
        child: Column(
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
                              "Already have an account?",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFF8F8CFE),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Sign In",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
            Container(
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
                      "Get Started Free",
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Free forever. No credit card needed.",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 40),


                    Obx(() => WidgetInputField(
                      label: "Email Address",
                      icon: Icons.email,
                      controller: signUpController.emailController,
                      errorText: signUpController.showErrors.value && !signUpController.emailIsValid.value
                          ? "Enter a valid email"
                          : null,
                      keyboardType: TextInputType.emailAddress,
                    )),

                    const SizedBox(height: 16),

                    Obx(() => WidgetInputField(
                      label: "Username",
                      icon: Icons.person,
                      controller: signUpController.usernameController,
                      errorText: signUpController.showErrors.value && !signUpController.usernameIsValid.value
                          ? "Username must be at least 6 characters"
                          : null,
                      keyboardType: TextInputType.text,
                    )),


                    Obx(() => WidgetInputField(
                      label: "Password",
                      icon: Icons.lock,
                      controller: signUpController.passwordController,
                      errorText: signUpController.showErrors.value && !signUpController.passwordIsValid.value
                          ? "Password must be at least 6 characters"
                          : null,
                      keyboardType: TextInputType.visiblePassword,
                    )),


                    const SizedBox(height: 30),
                    WidgetButton(
                      title: "Sign Up",
                      onTap: () {
                        signUpController.signUp();
                      },
                    ),
                    const SizedBox(height: 38),
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                            endIndent: 10, // Reduced indent for better balance
                          ),
                        ),
                        Text(
                          "OR Sign Up with",
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
                        const SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
