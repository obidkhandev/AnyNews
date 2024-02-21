import 'package:flutter/material.dart';
import 'package:my_project/constants.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "No, staring at a screen won’t damage your eyes",
      style: TextStyle(
        color: kTextPrimarycolor,
        fontWeight: FontWeight.w800,
        fontSize: 24,
      ),
      textAlign: TextAlign.start,
    );
  }
}