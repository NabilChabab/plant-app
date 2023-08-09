import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/screens/drawer.dart';
import 'package:flutter_application_test/screens/register.dart';
import 'package:flutter_application_test/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'home.dart';
import 'splash_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Stack(
            children: [
              Container(
                height: double.infinity,
                child: Image.asset("assets/images/4.jpeg",fit: BoxFit.cover,),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(()=>SplashScreen(),transition: Transition.leftToRightWithFade,duration: Duration(seconds: 1));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(2, 7),
                            )
                          ]
                        ),
                        child: const Center(
                          child: Icon(
                            FluentSystemIcons.ic_fluent_arrow_left_filled,color: Colors.green,
                          )
                        ),
                      ),
                    ),
                    const Gap(50),
                    Column(
                      children: [
                        Text(
                          "Get Started With\nCreating your Account...",style: Styles.headlineStyle.copyWith(fontFamily: 'Itim',color: Color.fromARGB(255, 113, 150, 115)),
                        )
                      ],
                    ),
                    const Gap(60),
                    Container(
                      child: TextFormField(
                        autofocus: false,
                        keyboardType: TextInputType.name,
                        maxLength: 100,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled,color: Color.fromARGB(255, 113, 150, 115),),
                          labelText: "UserName",
                          labelStyle: TextStyle(fontFamily: 'Itim'),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 113, 150, 115)
                            ),
                          ),
                        ),
                      )
                    ),
                    const Gap(10),
                    Container(
                      child: TextFormField(
                        autofocus: false,
                        obscureText: true,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(FluentSystemIcons.ic_fluent_eye_hide_filled,color: Color.fromARGB(255, 113, 150, 115)),
                          labelText: "Password",
                          labelStyle: TextStyle(fontFamily: 'Itim'),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(255, 113, 150, 115)
                            ),
                          ),
                        ),
                      )
                    ),
                    const Gap(80),
                    Container(
                      margin: EdgeInsets.only(left: 50,right: 50),
                      child: GestureDetector(
                        child: Center(
                          child: SlideAction(
                            onSubmit: () {
                              Get.to(()=>DrawerNav(),transition: Transition.circularReveal,duration: Duration(seconds: 1));
                            },
                            animationDuration: Duration(milliseconds: 500),
                            innerColor: Colors.white,
                            outerColor: Color.fromARGB(255, 113, 150, 115),
                            submittedIcon: Container(
                              width: 40,
                              height: 40,
                              child: Image.asset("assets/images/emoji2 (1).png",color: Colors.white,)),
                            sliderRotate: true,
                            text: "Slide To Login",textStyle: TextStyle(fontFamily: 'Itim',fontSize: 15,color: Colors.white),
                            height: 65,
                          ),
                        ),
                      ),
                    ),
                    Gap(40),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(()=>RegisterPage(),transition: Transition.rightToLeftWithFade,duration: Duration(seconds: 1));
                        },
                        child: Center(
                          child: Container(
                            child: const Center(
                              child: Text(
                                "Register !!",style: TextStyle(fontSize: 20,fontFamily: 'Itim',decoration: TextDecoration.underline,)
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}