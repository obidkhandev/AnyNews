import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_project/helper/helper_functions.dart';
import 'package:my_project/ui/news/card.dart';
import 'package:my_project/ui/news_list_view/news_list_view_page.dart';
import 'package:my_project/ui/read_more/read_more.dart';
import 'package:my_project/widget/my_app_bar.dart';
import 'package:my_project/widget/my_plus.dart';
import 'package:my_project/widget/nav_bar.dart';
import 'package:my_project/widget/title.dart';

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
              CarouselSlider.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      MyCard(),
                  options: CarouselOptions(
                    height: height(context) * 0.55,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  )),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: width(context) * 0.05),
                child: MyTitle(),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: width(context) * 0.05),
                child: const Text(
                  "I’m here to quell your health concerns: staring screen doesn’t damage your eyes...",
                  style: TextStyle(
                    color: Color(0xffA0A5B5),
                    overflow: TextOverflow.ellipsis,
                    fontSize: 16,
                  ),
                  maxLines: 2,
                  // overflow: TextOverflow.ellipsis,
                ),
              ),
              const Spacer(),
              const MyBottomNavBar()
            ],
          ),
          Positioned(
              right: width(context) * 0.05,
              bottom: height(context) * 0.127,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReadMorePage(),
                    ),
                  );
                },
                child: const Text(
                  "View more",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )),
          const MyPlus(),
        ],
      ),
    );
  }
}


