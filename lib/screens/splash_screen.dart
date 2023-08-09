import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/utils/app_styles.dart';
import 'package:flutter_application_test/screens/login.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Stack(
            children: [
              SizedBox(
                height: double.infinity,
                child: Image.asset("assets/images/background1.jpeg",fit: BoxFit.cover,)
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Inside Nature",style: TextStyle(color: Color.fromARGB(255, 47, 81, 49),fontSize: 35,fontFamily: 'Itim',fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),
                    ),
                    const Gap(30),
                    const Text(
                      "Create a piece of wildlif and\nimmerse youself in peace and quiet...",style: TextStyle(fontFamily: 'Itim',fontSize: 20,color: Color.fromARGB(255, 81, 119, 82))
                    ),
                    Gap(300),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => LoginPage(),transition: Transition.rightToLeftWithFade,duration: Duration(seconds: 1));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 290,top: 150),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
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
                            FluentSystemIcons.ic_fluent_arrow_right_filled,color: Color.fromARGB(255, 57, 99, 60),
                          )
                        ),
                      ),
                    ),    
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}