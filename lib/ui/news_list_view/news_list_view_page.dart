import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/helper/helper_functions.dart';
import 'package:my_project/model/category.dart';
import 'package:my_project/widget/my_app_bar.dart';
import 'package:my_project/widget/my_plus.dart';
import 'package:my_project/widget/nav_bar.dart';

class NewListPage extends StatelessWidget {
  const NewListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: height(context) * 0.05,
                  left: width(context) * 0.05,
                  right: width(context) * 0.05,
                  bottom: height(context) * 0.02,
                ),
                child: MyAppBar(
                  lastSvgImg: "assets/icons/Group 1358 (1).svg",
                  lastIconTap: () {},
                ),
              ),
              SizedBox(
                height: height(context) * 0.8,
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemBuilder: (context, index) {
                    
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: ,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              // margin: EdgeInsets.,
                              height: height(context) * 0.1,
                              width: width(context) * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    category[index].image,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              category[index].name,
                              style: TextStyle(color: category[index].textColor),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Let’s settle the debate: IOS vs\nAndroidz Consumer verdict",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "10mins",
                                      style:
                                          TextStyle(color: Color(0xffA0A0A0)),
                                    ),
                                    SvgPicture.asset(
                                      "assets/icons/Group 1359.svg",
                                      height: 5,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              const Spacer(),
              const MyBottomNavBar(),
            ],
          ),
          const MyPlus(),
        ],
      ),
    );
  }
}
