// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:auth_flutter_clean/domain/core/const.dart';
import 'package:auth_flutter_clean/infrastructure/navigation/routes.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Login'),
      //   centerTitle: true,
      // ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Center(child: SizedBox(
                  width: 90,
                  height: 90,
                  child: DropShadowImage(image: Image.asset('assets/images/logo.png'),
                  blurRadius: 5,
                  offset: const Offset(5,5),
                  scale: 0.8),
                  )
                ) ),
              // Text("EVON", style: TextStyle(
              //   fontFamily: GoogleFonts.righteous().fontFamily,
              //   fontSize: 30,
              //   color:  blue2),),
              Padding(
                padding: EdgeInsets.only(right: 40, left: 40, top: 70),
                child: TextField(
                  controller: controller.usernameController,
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
                    labelText: "Email / Mobile"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40, top: 20),
                child: Obx(() {
                  return TextField(
                  controller: controller.passnameController,
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
                      icon: controller.isHidePassword.value ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                      onPressed: (() {
                        controller.isHidePassword.value = !controller.isHidePassword.value;
                      }),
                    ),
                  ),
                );
                },)
              ),
              SizedBox(height: 20,),
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
                      await controller.login();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 18, bottom: 18),
                    child: Text("Log In", style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              SizedBox(height: 20),
              RichText(
               text: TextSpan(
                    text: "Forgot Password?",
                    style: TextStyle(
                      color: blue2,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.quicksand().fontFamily
                    ),
                    recognizer: TapGestureRecognizer()
                    ..onTap = (() {
                      
                    })
                    )
              ),
              SizedBox(height: 20,),
              Text("or", style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 180, 180, 180)),),
              SizedBox(height : 20),
              Container(
                height: 50,
                width: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SignInButton(
                    Buttons.Facebook, onPressed:(){
                      
                    }),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SignInButton(
                    Buttons.Google, onPressed:(){
                      
                    }),
                ),
              ),
              SizedBox(height : 110),
              RichText(text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: "Don't have account? ", style: TextStyle(
                    color: Colors.black,
                    fontFamily: GoogleFonts.quicksand().fontFamily)),
                  TextSpan(
                    text: "Sign Up?",
                    style: TextStyle(
                      color: blue2,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.quicksand().fontFamily
                    ),
                    recognizer: TapGestureRecognizer()
                    ..onTap = (() {
                      Get.offNamed(Routes.SIGNUP);
                      Get.delete<LoginController>();
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