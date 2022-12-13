import 'package:auth_flutter_clean/domain/core/const.dart';
import 'package:auth_flutter_clean/infrastructure/navigation/routes.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/signup.controller.dart';

class SignupScreen extends GetView<SignupController> {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('SignupScreen'),
      //   centerTitle: true,
      // ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 10),
                child: Center(child: SizedBox(
                  width: 80,
                  height: 80,
                  child: DropShadowImage(image: Image.asset('assets/images/logo.png'),
                  blurRadius: 5,
                  offset: const Offset(5,5),
                  scale: 0.8),
                  )
                ) ),
              //Fullname
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20, top: 30),
                child: TextField(
                  controller: controller.fullnameController,
                  keyboardType: TextInputType.name,
                  cursorColor: blue2,
                  decoration: InputDecoration(
                    hintMaxLines: 1,
                    labelStyle: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 180, 180, 180)),
                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: blue2),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: blue2),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    labelText: "Fullname"
                  ),
                ),
              ),
              //Moblie Number
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                child: TextField(
                  controller: controller.mobileController,
                  keyboardType: TextInputType.number,
                  cursorColor: blue2,
                  decoration: InputDecoration(
                    hintMaxLines: 1,
                    labelStyle: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 180, 180, 180)),
                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: blue2),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: blue2),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    labelText: "Mobile Number"
                  ),
                ),
              ),
              //Email
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                child: TextField(
                  controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: blue2,
                  decoration: InputDecoration(
                    hintMaxLines: 1,
                    labelStyle: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 180, 180, 180)),
                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: blue2),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: blue2),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    labelText: "Email"
                  ),
                ),
              ),
              //Type User]
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                child: TextField(
                  controller: controller.typeUserController,
                  keyboardType: TextInputType.name,
                  cursorColor: blue2,
                  decoration: InputDecoration(
                    hintMaxLines: 1,
                    labelStyle: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 180, 180, 180)),
                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: blue2),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: blue2),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    labelText: "Type User"
                  ),
                ),
              ),
              //Password
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                child: Obx(() {
                  return TextField(
                  controller: controller.passwordController,
                  obscureText: controller.isHidePassword.value,
                  keyboardType: TextInputType.visiblePassword,
                  cursorColor: blue2,
                  decoration: InputDecoration(
                    hintMaxLines: 1,
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 180, 180, 180)),
                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: blue2),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: blue2),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    labelText: "Password",
                    suffixIcon: IconButton(
                      color: blue2,
                      icon: controller.isHidePassword.value ? Icon(Icons.visibility_off) : Icon(Icons.remove_red_eye),
                      onPressed: (() {
                        controller.isHidePassword.value = !controller.isHidePassword.value;
                      }),
                    ),
                  ),
                );
                },)
              ),
              //Confrim Password
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 30),
                child: Obx(() {
                  return TextField(
                  controller: controller.confrimPassController,
                  obscureText: controller.isHidePassword2.value,
                  keyboardType: TextInputType.visiblePassword,
                  cursorColor: blue2,
                  decoration: InputDecoration(
                    hintMaxLines: 1,
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 180, 180, 180)),
                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: blue2),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: blue2),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide:  BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    labelText: "Confirm Password",
                    suffixIcon: IconButton(
                      color: blue2,
                      icon: controller.isHidePassword2.value ? Icon(Icons.visibility_off) : Icon(Icons.remove_red_eye),
                      onPressed: (() {
                        controller.isHidePassword2.value = !controller.isHidePassword2.value;
                      }),
                    ),
                  ),
                );
                },)
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [blue1, blue2]
                    )
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    disabledForegroundColor: Colors.transparent,
                    shadowColor: Colors.transparent 
                  ),
                  onPressed: () async {
                      await controller.signUp();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 18, bottom: 18),
                    child: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              const SizedBox(height : 90),
              RichText(text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: "Already have an account? ", style: TextStyle(
                    color: Colors.black,
                    fontFamily: GoogleFonts.quicksand().fontFamily)),
                  TextSpan(
                    text: "Log In",
                    style: TextStyle(
                      color: blue2,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.quicksand().fontFamily
                    ),
                    recognizer: TapGestureRecognizer()
                    ..onTap = (() {
                      Get.toNamed(Routes.LOGIN);
                    })
                    )
                ]
              ))
            ],  
          ),
        ),
      )
    );
  }
}
