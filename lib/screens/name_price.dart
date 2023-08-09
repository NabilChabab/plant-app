import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NamePrice extends StatelessWidget {
  const NamePrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: const Text(
                  "Yucca",style: TextStyle(
                    fontFamily: "Itim",
                    fontSize: 35,
                  ),
                ),
              ),
              Gap(1),
              const Text(
                "Korea",style: TextStyle(
                  color: Color.fromARGB(255, 65, 119, 66),
                  fontFamily: 'Itim',
                  fontSize: 20,
                ),
              )
            ],
          ),
          const Text(
            "200\$",style: TextStyle(
              color: Color.fromARGB(255, 65, 119, 66),
              fontSize: 25,
              fontFamily: 'Itim',
            ),
          )
        ],
      ),
    );
  }
}