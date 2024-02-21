import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyRating extends StatelessWidget {
  const MyRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,),
      height: 26,
      width: 72,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            "assets/icons/Vector (3).svg",
            height: 14,
            width: 14,
          ),
          Text("Top"),
          Text("10")
        ],
      ),
    );
  }
}
