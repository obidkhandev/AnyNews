import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/helper/helper_functions.dart';
import 'package:my_project/widget/my_rating.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height

      decoration: BoxDecoration(
        color: Colors.red,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/Rectangle 204.png"),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              alignment: Alignment.center,
              height: height(context) * 0.04,
              width: height(context) * 0.15,
              decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
              ),
              child: const Text(
                "Technology",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const Spacer(),
          const MyRating(
            color: Colors.white,
            detailColor: Colors.red,
          ),
          // SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Sumanth\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text: "10 min ago",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
