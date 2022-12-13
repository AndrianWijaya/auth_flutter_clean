import 'package:auth_flutter_clean/domain/core/providers/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  var isHidePassword = true.obs;

  var loginProvider = LoginProvider();

  var isLoginSuccess = false.obs;

  var usernameController = TextEditingController();
  var passnameController = TextEditingController();

login() async {
  await  loginProvider.login(usernameController.text, passnameController.text).then((value) {
      if (value.isSuccess ?? false) {
        isLoginSuccess.value = true;
        Get.snackbar("Success", "Login Success");
      } else {
        isLoginSuccess.value = false;
        Get.snackbar("Failed", 'Login Error ${value.message}');
      }
    });
  }

}
