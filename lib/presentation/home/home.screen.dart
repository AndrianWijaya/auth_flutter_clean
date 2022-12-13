import 'package:auth_flutter_clean/domain/core/const.dart';
import 'package:auth_flutter_clean/infrastructure/navigation/routes.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('HomeScreen'),
      //   centerTitle: true,
      // ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: Center(child: SizedBox(
                    width: 90,
                    height: 90,
                    child: DropShadowImage(image: Image.asset('assets/images/logo.png'),
                    blurRadius: 5,
                    offset: const Offset(5,5),
                    scale: 0.8),
                    )
                  ) ),
                SizedBox(height: 20,),
                Text("EVON", style: TextStyle(
                  fontFamily: GoogleFonts.righteous().fontFamily,
                  fontSize: 30,
                  color:  Colors.black),),
                SizedBox(height: 80,),
                Container(
                  padding: EdgeInsets.only(left: 85, right: 85),
                  child: Text("Discover upcoming events near you",textAlign: TextAlign.center, style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color:  Colors.black),),
                ),
                SizedBox(height: 190,),
                Container(
                  width: 300,
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
                    onPressed: () {
                        Get.toNamed(Routes.SIGNUP);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 18, bottom: 18),
                      child: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // gradient: LinearGradient(
                      //   colors: [blue1, blue2]
                      // )
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      shadowColor: MaterialStateProperty.all(Colors.transparent),
                      overlayColor: MaterialStateProperty.all(Colors.transparent),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            width: 2,
                            color: blue2)
                        )
                      )
                    ),
                    // style: ElevatedButton.styleFrom(
                      
                    //   side: BorderSide(width: 2),
                    //   backgroundColor: Colors.transparent,
                    //   disabledForegroundColor: Colors.transparent,
                    //   shadowColor: Colors.transparent 
                    // ),
                    onPressed: () {
                        Get.toNamed(Routes.LOGIN);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 18, bottom: 18),
                      child: Text("Log In", style: TextStyle(fontWeight: FontWeight.bold, color: blue2),),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                RichText(
                 text: TextSpan(
                      text: "Skip for now",
                      style: TextStyle(
                        color: blue2,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.quicksand().fontFamily
                      ),
                      recognizer: TapGestureRecognizer()
                      ..onTap = (() {
                         SystemNavigator.pop();
                      })
                      )
                ),
              ],  
            ),
        ),
      ),
    );
  }
}
