import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_authentication/screens/sign_in_screen.dart';

class SignInController extends GetxController {
  var storage = GetStorage();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var emailIsValid = false.obs;
  var passwordIsValid = false.obs;
  var showErrors = false.obs;

  void emailValidation(String value) {
    emailIsValid.value = value.contains('@') && value.contains('.com');
  }

  void passwordValidation(String value) {
    passwordIsValid.value = value.length >= 6;
  }

  void signIn(String email, String password) {
    showErrors.value = true;

    emailValidation(emailController.text);
    passwordValidation(passwordController.text);

    if (emailIsValid.value && passwordIsValid.value) {
      String? storedEmail = storage.read('email');
      String? storedPassword = storage.read('password');
      if (storedEmail == email && storedPassword == password) {
        Get.snackbar('Success', 'Sign in successful', snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.green, colorText: Colors.white,);
        clearController();
        showErrors.value = false; // Reset errors after success
      } else {
        Get.snackbar('Error', 'Invalid email or password', snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red, colorText: Colors.white,);
      }
    } else {
      Get.snackbar('Error', 'Please fill all the fields correctly', snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red, colorText: Colors.white,);
    }
  }

  void clearController() {
    emailController.clear();
    passwordController.clear();
  }
}
