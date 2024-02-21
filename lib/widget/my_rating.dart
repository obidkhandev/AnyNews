import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyRating extends StatelessWidget {
  final Color color;
  final Color detailColor;
  final Color fireColor;
  const MyRating({
    super.key,
    required this.color,
    required this.detailColor,
    this.fireColor = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: 26,
      width: 72,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            "assets/icons/Vector (3).svg",
            height: 14,
            width: 14,
            color: fireColor,
          ),
          Text(
            "Top",
            style: TextStyle(color: detailColor),
          ),
          Text(
            "10",
            style: TextStyle(color: detailColor),
          )
        ],
      ),
    );
  }
}
