import 'package:flutter/material.dart';

import '../../constanta/colors.dart';
import 'homepage_bottom.dart';
import 'homepage_image.dart';
import 'homepage_navbar.dart';
import 'homepage_slider.dart';
import 'homepage_titleText.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [baseColor, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            HomePageNavbar(),
            SizedBox(
              height: 100,
            ),
            BoxImage(),
            SizedBox(
              height: 50,
            ),
            TitleText(),
            SizedBox(
              height: 10,
            ),
            MusicSlider(),
            SizedBox(
              height: 10,
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
