import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/featured_info.dart';
import 'package:gap/gap.dart';

class FeaturedPlants extends StatelessWidget {
  final Map<String,dynamic> plants;
  const FeaturedPlants({super.key, required this.plants});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill.fillBack,
      front: Container(
        height: 250,
        width: MediaQuery.of(context).size.width*0.5,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 204, 206, 205),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset(2, 7),
              blurRadius: 8
            )
          ]
        ),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              child: Image.asset("assets/images/${plants['image']}"),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Plant Name",style: TextStyle(
                      fontFamily: 'Itim',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Gap(10),
                  Text(
                    "\$${plants['price']}",
                    style: const TextStyle(
                      fontFamily: 'Itim',
                      color: Color.fromARGB(255, 75, 109, 75),
                      fontSize: 20
                    )
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20),
              alignment: Alignment.bottomRight,
              child: Icon(Icons.favorite,color: Color.fromARGB(255, 215, 100, 91),),
            )
          ],
        ),
      ),
      back: Container(
        height: 250,
        width: MediaQuery.of(context).size.width*0.5,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 204, 206, 205),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset(2, 7),
              blurRadius: 8
            )
          ]
        ),
        child: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 20,left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Description",style: TextStyle(
                  fontFamily: 'Itim',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Gap(20),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id aliquam diam. Etiam vehicula leo eros, sed feugiat elit fermentum et. Aenean ullamcorper nulla sit amet metus porttitor...",
                style: TextStyle(
                  fontFamily: 'Itim',
                  fontSize: 15
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
