import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import 'drawer.dart';
import 'home.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 280,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 57, 109, 59),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(250))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                      onTap: () {
                        Get.to(() => DrawerNav(),transition: Transition.circularReveal,duration: Duration(seconds: 1));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.topLeft,
                        child: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
                    ),
                Container(
                  margin: EdgeInsets.only(top: 30,),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.white),
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(image: 
                    AssetImage("assets/images/avatar.jpg"),fit: BoxFit.cover
                    ),
                  ),
                ),
                const Gap(10),
                const Text(
                  "Nabil Chabab",
                  style: TextStyle(
                    fontFamily: 'Itim',
                    color: Colors.white,
                    fontSize: 22
                  ),
                ),
                const Gap(10),
                const Text(
                  "nabil.chababnabil@gmail.com",
                  style: TextStyle(
                    fontFamily: 'Itim',
                    color: Colors.grey,
                    fontSize: 15
                  ),
                ),
              ],
            ),
          ),
          const Gap(30),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 216, 216, 216),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 8,
                  spreadRadius: 3,
                  offset: Offset(2,8)
                )
              ]
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
                      color: Color.fromARGB(255, 57, 109, 59),width: 3,
                    )),
                    hintText: "change name",
                    hintStyle: TextStyle(fontFamily: 'Itim'),
                    prefixIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled,color: Color.fromARGB(255, 57, 109, 59))
                  ),
                ),
                const Gap(20),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    helperText: "make sure your last password is correct",
                    helperStyle: TextStyle(fontFamily: 'Itim',color: Colors.blue),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
                      color: Color.fromARGB(255, 57, 109, 59),width: 3,
                    )),
                    hintText: "change password",
                    hintStyle: TextStyle(fontFamily: 'Itim'),
                    prefixIcon: Icon(FluentSystemIcons.ic_fluent_eye_show_filled,color: Color.fromARGB(255, 57, 109, 59))
                  ),
                ),
                const Gap(10),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
                      color: Color.fromARGB(255, 57, 109, 59),width: 3,
                    )),
                    hintText: "change location",
                    hintStyle: TextStyle(fontFamily: 'Itim'),
                    prefixIcon: Icon(FluentSystemIcons.ic_fluent_location_filled,color: Color.fromARGB(255, 57, 109, 59))
                  ),
                ),
                const Gap(20),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 57, 109, 59),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      "Edit Profile",style: TextStyle(
                        fontFamily: 'Itim',
                        color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}