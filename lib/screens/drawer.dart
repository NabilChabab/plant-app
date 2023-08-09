import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/screens/home.dart';
import 'package:flutter_application_test/screens/profile.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

import '../utils/app_styles.dart';

class DrawerNav extends StatefulWidget {
  const DrawerNav({super.key});

  @override
  State<DrawerNav> createState() => _DrawerNavState();
}

class _DrawerNavState extends State<DrawerNav> {

  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();

    _pages = [

      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Home",
          baseStyle: const TextStyle(fontFamily: 'Itim',color: Colors.white,fontSize: 20),
          selectedStyle: const TextStyle(),
          colorLineSelected: Colors.white
        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Profile",
          baseStyle: const TextStyle(fontFamily: 'Itim',color: Colors.white,fontSize: 20),
          selectedStyle: const TextStyle(),
          colorLineSelected: Colors.white
        ),
        const ProfilePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Notifications",
          baseStyle: const TextStyle(fontFamily: 'Itim',color: Colors.white,fontSize: 20),
          selectedStyle: const TextStyle(),
          colorLineSelected: Colors.white
        ),
        // ignore: prefer_const_constructors
        HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Settings",
          baseStyle: const TextStyle(fontFamily: 'Itim',color: Colors.white,fontSize: 20),
          selectedStyle: const TextStyle(),
          colorLineSelected: Colors.white
        ),
        // ignore: prefer_const_constructors
        HomePage(),
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: const Color.fromARGB(255, 63, 100, 64),
      screens: _pages,
      initPositionSelected: 0,
      backgroundColorAppBar: Colors.transparent,
      elevationAppBar: 0,
      leadingAppBar: Container(
        padding: const EdgeInsets.only(left: 10,top: 10),
        child: Image.asset("assets/images/menu.png",color: Color.fromARGB(255, 65, 119, 66)),
      ),
      contentCornerRadius: 50,
      boxShadow: [BoxShadow(spreadRadius: 5,blurRadius: 10,color: Colors.black.withOpacity(0.1))],
      slidePercent: 55,
      actionsAppBar: [
        Container(
          padding: const EdgeInsets.only(right: 20,top: 10),
          child: Container(
            width: 30,
            height: 30,
            child: Image.asset("assets/images/noti.png",color: Color.fromARGB(255, 65, 119, 66),),
          )
        ),
      ],
    );
  }
}