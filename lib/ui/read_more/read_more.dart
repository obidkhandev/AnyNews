import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/ui/read_more/widget/my_cart.dart';
import 'package:my_project/widget/title.dart';

class ReadMorePage extends StatelessWidget {
  const ReadMorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MyCart(),
          Expanded(
              child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const MyTitle(),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/Ellipse 60.png"),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Sumanth MSV\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff4F4F4F),
                          ),
                        ),
                        TextSpan(
                          text: "posted : 3 days ago",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff4F4F4F),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/ant-design_field-time-outlined.svg",
                    height: 26,
                  ),
                  const Text(
                    "5 min",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 20),
              const Text(
                """
I’m here to quell your health concerns: staring at a screen doesn’t damage your eyes. They won’t make you go blind, and your doctor isn’t going to worry about your health if he or she hears that you’re spending a lot of time in front of them. However, you might feel uncomfortable after a long time in front of a
won’t make you go blind, and your doctor isn’t going to worry about your health if he or she hears that you’re spending a lot of time in front of a won't make you go blind, and your doctor isn't going to worry about your health if he or she 
""",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}

