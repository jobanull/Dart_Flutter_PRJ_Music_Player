import 'package:flutter/material.dart';

import '../../constanta/colors.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Linkin Park",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          "end the end",
          style: TextStyle(
            fontSize: 20,
            color: colorItem,
          ),
        ),
      ],
    );
  }
}
