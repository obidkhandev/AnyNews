import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyButton extends StatelessWidget {
  final bool isSelected;
  final Color primaryColor;
  final String text;
  final String svg;
  const MyButton({
    super.key,
    this.isSelected = false,
    this.primaryColor = const Color(0xffA0A0A0),
    required this.text,
    required this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: isSelected ? 10 : 0,
      ),
      child: Column(
        mainAxisAlignment: isSelected
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.spaceEvenly,
        children: [
          if (isSelected)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              color: const Color(0xffE91B1B),
              height: 2,
              width: 40,
            ),
          SvgPicture.asset(
            svg,
            width: 24,
            height: 20,
          ),
          Text(
            text,
            style: TextStyle(
                color: primaryColor, fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
