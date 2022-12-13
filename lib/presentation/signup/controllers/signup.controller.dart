import 'package:auth_flutter_clean/domain/core/providers/register_provider.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  var isHidePassword = true.obs;
  var isHidePassword2 = true.obs;

  var registerProvider = RegisterProvider();

  var isRegisterSuccess = false.obs;

  var fullnameController = TextEditingController();
  var mobileController = TextEditingController();
  var emailController = TextEditingController();
  var typeUserController = TextEditingController();
  var passwordController = TextEditingController();
  var confrimPassController = TextEditingController();

  signUp() async {
    await registerProvider.register(
            fullnameController.text,
            mobileController.text,
            emailController.text,
            typeUserController.text,
            passwordController.text,
            confrimPassController.text)
        .then((value) {
      if (value.isSuccess ?? false) {
        isRegisterSuccess.value = true;
        Get.snackbar("Success", "Register Success");
      } else {
        isRegisterSuccess.value = false;
        Get.snackbar("Failed", 'Register Error ${value.message}');
      }
    });
  }
}
