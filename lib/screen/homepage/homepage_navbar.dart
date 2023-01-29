// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../constanta/colors.dart';

class HomePageNavbar extends StatelessWidget {
  const HomePageNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: colorItem,
            size: 40,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/playlist');
          },
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.repeat,
                color: Color.fromARGB(255, 77, 177, 191),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline,
                color: colorItem,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: colorItem,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
