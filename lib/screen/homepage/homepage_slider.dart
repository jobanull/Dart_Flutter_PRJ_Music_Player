import 'package:flutter/material.dart';

import '../../constanta/colors.dart';

class MusicSlider extends StatelessWidget {
  const MusicSlider({super.key});

  @override
  Widget build(BuildContext context) {
    double slider = 0.1;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "00:00",
          style: TextStyle(
            color: colorItem,
          ),
        ),
        Slider(
          onChanged: (double value) {},
          value: slider,
        ),
        Text(
          "00:00",
          style: TextStyle(
            color: colorItem,
          ),
        ),
      ],
    );
  }
}
