import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/screens/plants_screens.dart';
import 'package:flutter_application_test/screens/recommand_plants.dart';
import 'package:gap/gap.dart';

import '../featured_info.dart';
import 'drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Welcome Nabil",
                                  style: TextStyle(
                                      fontFamily: 'Itim',
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 105, 105, 105)),
                                ),
                                const Gap(20),
                                Text(
                                  "Find Your Favorite Plants.",
                                  style: TextStyle(
                                    fontFamily: 'Itim',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const Gap(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: MediaQuery.of(context).size.width * 0.75,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    offset: Offset(3, 7),
                                    blurRadius: 7,
                                    spreadRadius: 1,
                                  )
                                ]),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search",
                                  hintStyle: TextStyle(fontFamily: 'Itim'),
                                  icon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/curseurs.png"))),
                          )
                        ],
                      ),
                      const Gap(40),
                      Container(
                        width: 320,
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 65, 119, 66),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  blurRadius: 7,
                                  spreadRadius: 1,
                                  offset: Offset(3, 8))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 40, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "30% OFF",
                                    style: TextStyle(
                                      fontFamily: 'Itim',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const Gap(2),
                                  Text(
                                    "01-30 Feb",
                                    style: TextStyle(
                                        fontFamily: 'Itim',
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 150,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/p1.png"))),
                            ),
                          ],
                        ),
                      ),
                      const Gap(40),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: const Text(
                                "Featured",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Itim',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 65, 119, 66),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                "View All",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Itim',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      Gap(8),
                      Container(
                        margin: EdgeInsets.only(right: 300),
                        width: 50,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 65, 119, 66),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const Gap(20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Row(
                              children: featuredList
                                  .map((singleplant) =>
                                      FeaturedPlants(plants: singleplant))
                                  .toList(),
                            ),
                          ],
                        ),
                      ),
                      const Gap(20),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: const Text(
                                "Recommande",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Itim',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 65, 119, 66),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                "View All",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Itim',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      Gap(8),
                      Container(
                        margin: EdgeInsets.only(right: 300),
                        width: 50,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 65, 119, 66),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const Gap(40),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Row(
                              children: recommadList
                                  .map((singleplant2) =>
                                      RecommandePlants(plants2: singleplant2))
                                  .toList(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
