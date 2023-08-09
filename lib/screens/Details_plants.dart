import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/screens/drawer.dart';
import 'package:flutter_application_test/screens/name_price.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class DetailsPlants extends StatelessWidget {
  const DetailsPlants({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => DrawerNav(),transition: Transition.circularReveal,duration: Duration(seconds: 1));
                      },
                      child: Container(
                        padding: EdgeInsets.only(bottom: 110,left: 20),
                        alignment: Alignment.topLeft,
                        child: Icon(Icons.arrow_back_ios_new)),
                    ),
                    
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 8,
                            spreadRadius: 1,
                            offset: Offset(2, 7)
                          )
                        ]
                      ),
                      child: Container(
                        child: Image.asset(
                          "assets/images/icon1.png",color: Color.fromARGB(255, 65, 119, 66),
                        ),
                      ),
                    ),
                    Gap(50),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 8,
                            spreadRadius: 1,
                            offset: Offset(2, 7)
                          )
                        ]
                      ),
                      child: Container(
                        child: Image.asset(
                          "assets/images/icon2.png",color: Color.fromARGB(255, 65, 119, 66),
                        ),
                      ),
                    ),
                    Gap(50),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 8,
                            spreadRadius: 1,
                            offset: Offset(2, 7)
                          )
                        ]
                      ),
                      child: Container(
                        child: Image.asset(
                          "assets/images/icon3.png",color: Color.fromARGB(255, 65, 119, 66),
                        ),
                      ),
                    ),
                    Gap(50),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 8,
                            spreadRadius: 1,
                            offset: Offset(2, 7)
                          )
                        ]
                      ),
                      child: Container(
                        child: Image.asset(
                          "assets/images/panier.png",color: Color.fromARGB(255, 65, 119, 66),
                        ),
                      ),
                    ),
                    Gap(130),
                  ],
                ),
              ),
              Container(
                height: size.height*0.78,
                width: size.width*0.7,
                decoration:  BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/det.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      blurRadius: 11,
                      spreadRadius: 8,
                      
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 200,top: 30),
                      width: 20,
                      height: 20,
                      child: Image.asset("assets/images/more.png",color: Colors.black,)
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 500),
                      width: 40,
                      height: 40,
                      child: Image.asset("assets/images/more2.png",color: Colors.white,)
                    )
                  ],
                )
              ),
            ],
          ),
          NamePrice(),
          Gap(15),
          Row(
            children: [
              Container(
                width: 200,
                height: 70,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 65, 119, 66),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40))
                ),
                child: const Center(
                  child: Text(
                    "Buy Now",style: TextStyle(
                      fontFamily: 'Itim',
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
              SizedBox(width: 35),
              const Text(
                "Description",
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontSize: 20,
                ),
              )
            ],
          )
        ],
      ),
      ),
        ],
      )
    ); 
  }
}