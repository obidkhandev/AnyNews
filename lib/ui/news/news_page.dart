import 'package:flutter/material.dart';
import 'package:my_project/constants.dart';
import 'package:my_project/helper/helper_functions.dart';
import 'package:my_project/ui/news_list_view/news_list_view_page.dart';
import 'package:my_project/widget/my_app_bar.dart';
import 'package:my_project/widget/my_plus.dart';
import 'package:my_project/widget/nav_bar.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: height(context) * 0.06,
                  left: width(context) * 0.05,
                  right: width(context) * 0.05,
                ),
                child: MyAppBar(
                  lastIconTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewListPage(),
                      ),
                    );
                  },
                  lastSvgImg: "assets/icons/Group 1358.svg",
                ),
              ),
              SizedBox(height: height(context) * 0.04),
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.red,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: width(context) * 0.05),
                child: Column(
                  children: [
                    const Text(
                      "No, staring at a screen won’t damage your eyes",
                      style: TextStyle(
                        color: kTextPrimarycolor,
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "I’m here to quell your health concerns: staring screen doesn’t damage your eyes...",
                            style: TextStyle(
                              color: Color(0xffA0A5B5),
                              overflow: TextOverflow.ellipsis,
                              fontSize: 16,
                            ),
                          ),
                          TextSpan(
                            text: "View more",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              const MyBottomNavBar()
            ],
          ),
          const MyPlus(),
        ],
      ),
    );
  }
}
