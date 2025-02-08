import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_authentication/screens/sign_in_screen.dart';

class SignUpController extends GetxController {
  var storage = GetStorage();

  var emailController = TextEditingController();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  var emailIsValid = false.obs;
  var usernameIsValid = false.obs;
  var passwordIsValid = false.obs;

  var showErrors = false.obs;

  void emailValidation(String value) {
    emailIsValid.value = value.contains('@') && value.contains('.com');
  }

  void usernameValidation(String value) {
    usernameIsValid.value = value.length >= 6;
  }

  void passwordValidation(String value) {
    passwordIsValid.value = value.length >= 6;
  }

  void signUp() {
    showErrors.value = true; // Enable error display when button is clicked

    emailValidation(emailController.text);
    usernameValidation(usernameController.text);
    passwordValidation(passwordController.text);

    if (emailIsValid.value && usernameIsValid.value && passwordIsValid.value) {
      storage.write('email', emailController.text);
      storage.write('username', usernameController.text);
      storage.write('password', passwordController.text);

      Get.snackbar('Success', 'Sign up successful', snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.green, colorText: Colors.white,);
      clearController();
      showErrors.value = false; // Reset errors after success

      // Navigate to Sign In Page
      Future.delayed(const Duration(seconds: 1), () {
        Get.to(() => SignInScreen());
      });
    } else {
      Get.snackbar('Error', 'Please fill all the fields correctly', snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red, colorText: Colors.white,);
    }
  }

  void clearController() {
    emailController.clear();
    usernameController.clear();
    passwordController.clear();
  }
}
