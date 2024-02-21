import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/constants.dart';
import 'package:my_project/helper/helper_functions.dart';

class MyAppBar extends StatefulWidget {
  final String lastSvgImg;
  final Function() lastIconTap;
  const MyAppBar({
    super.key,
    required this.lastSvgImg,
    required this.lastIconTap,
  });

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          "assets/icons/bx_bx-news.svg",
          width: 26,
          height: 26,
        ),
        const SizedBox(width: 10),
        const Text(
          "All News",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              // color: ,
              color: kTextPrimarycolor),
        ),
        const SizedBox(width: 5),
        SvgPicture.asset(
          "assets/icons/chevron-right.svg",
          width: 6,
          height: 12,
        ),
        const Spacer(),
        SvgPicture.asset(
          "assets/icons/fa-solid_search.svg",
          height: 26,
          width: 26,
        ),
        SizedBox(width: width(context) * 0.08),
        GestureDetector(
          onTap: widget.lastIconTap,
          child: SvgPicture.asset(
            widget.lastSvgImg,
            height: 17,
            width: 20,
          ),
        ),
      ],
    );
  }
}
