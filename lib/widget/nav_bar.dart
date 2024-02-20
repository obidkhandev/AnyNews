import 'package:flutter/material.dart';
import 'package:my_project/helper/helper_functions.dart';
import 'package:my_project/widget/my_button.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) * 0.09,
      padding: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
        BoxShadow(
          blurRadius: 16,
          color: Color(0xff000000).withOpacity(.12),
        )
      ]),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MyButton(
            svg: "assets/icons/Vector (1).svg",
            text: "News",
            primaryColor: Colors.red,
            isSelected: true,
          ),
          MyButton(
            svg: "assets/icons/bx_bx-news (1).svg",
            text: "My News",
          ),
          Text(
            "Add News",
            style: TextStyle(color: Colors.black),
          ),
          MyButton(
            svg: "assets/icons/portfolio 2.svg",
            text: "Saved",
          ),
          MyButton(
            svg: "assets/icons/Vector (2).svg",
            text: "Settings",
          )
        ],
      ),
    );
  }
}