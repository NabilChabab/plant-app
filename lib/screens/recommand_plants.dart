import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/screens/Details_plants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class RecommandePlants extends StatelessWidget {
  final Map<String , dynamic> plants2;
  const RecommandePlants({super.key, required this.plants2});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => DetailsPlants(),transition: Transition.circularReveal,duration: Duration(seconds: 1));
      },
      child: Container(
        margin: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width*0.6,
        height: 350,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 65, 119, 66),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 8,
              spreadRadius: 2,
              offset: Offset(2, 7),
            )
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200,
                  margin: EdgeInsets.only(top: 10),
                  child: Image.asset("assets/images/${plants2['image']}"),
                ),
                Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.only(top: 10,right: 30),
                  child: RatingBar(
                    minRating: 1,
                    maxRating: 5,
                    initialRating: 4,
                    allowHalfRating: true,
                    updateOnDrag: true,
                    tapOnlyMode: true,
                    itemSize: 25,
                    direction: Axis.vertical,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(vertical: 4),
                    onRatingUpdate: (rating) {
                      print(rating);
                      },
                    ratingWidget: RatingWidget(full: Icon(FluentSystemIcons.ic_fluent_star_filled,color: Colors.white,), half: Icon(Icons.star_half,color: Colors.white,), empty: Icon(Icons.star_border_rounded,color: Colors.white,)),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 0.15),
              height: 140,
              padding: EdgeInsets.only(top: 10,left: 10,right: 10),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Plant Name",style: TextStyle(
                      fontFamily: 'Itim',
                      fontSize: 20,
                      color: Color.fromARGB(255, 65, 119, 66),
                    ),
                  ),
                  const Gap(20),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id aliquam diam. Etiam vehicula leo eros, sed feugiat elit fermentum et. Aenean ullamcorper nulla sit amet metus porttitor...",
                    style: TextStyle(
                      fontFamily: 'Itim',
                        fontSize: 12
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}