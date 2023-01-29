import 'package:flutter/material.dart';

import '../../constanta/colors.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.download,
                    color: Color.fromARGB(255, 73, 72, 120),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_previous,
                    color: Color.fromARGB(255, 73, 72, 120),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.blue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow_outlined,
                      size: 35,
                      color: Color.fromARGB(255, 77, 177, 191),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_next,
                    color: Color.fromARGB(255, 73, 72, 120),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.list,
                    color: Color.fromARGB(255, 73, 72, 120),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
