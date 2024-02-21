import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/helper/helper_functions.dart';
import 'package:my_project/widget/my_rating.dart';

class MyCart extends StatelessWidget {
  const MyCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: height(context) * 0.06, left: 20, right: 20, bottom: 30),
      height: height(context) * 0.42,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/Rectangle 204.png"),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Container(
                height: 26,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xff9B51E0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Technology",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const MyRating(
                color: Color(0xffEB5757),
                detailColor: Colors.white,
                fireColor: Colors.white,
              ),
              const Spacer(),
              const Icon(
                Icons.bookmark_border_rounded,
                color: Colors.white,
              ),
              const SizedBox(width: 15),
              SvgPicture.asset(
                "assets/icons/share.svg",
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
