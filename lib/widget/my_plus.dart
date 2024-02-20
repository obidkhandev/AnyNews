import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/helper/helper_functions.dart';

class MyPlus extends StatelessWidget {
  const MyPlus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: width(context) / 2 - 20,
      bottom: 10,
      child: Container(
        padding: EdgeInsets.all(13),
        height: height(context) * 0.13,
        width: width(context) * 0.13,
        decoration: const BoxDecoration(
          color: Color(0xff2E2F41),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset("assets/icons/Shape.svg"),
      ),
    );
  }
}