import 'package:flutter/material.dart';

class BoxImage extends StatelessWidget {
  const BoxImage({super.key});

  @override
  Widget build(BuildContext context) {
    double lengthWith = MediaQuery.of(context).size.width;
    double lengthHeight = MediaQuery.of(context).size.height;
    return Container(
      width: lengthWith * 0.5,
      height: lengthHeight * 0.3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image_music/music_01.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(40),
        color: Colors.blue,
      ),
    );
  }
}
