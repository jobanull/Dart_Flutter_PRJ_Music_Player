// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constanta/colors.dart';
import 'playlist_content.dart';
import 'playlist_navbar.dart';

class PlayList extends StatelessWidget {
  const PlayList({super.key});

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
            PlayListNavbar(),
            SizedBox(height: 30),
            Expanded(child: PlaylistContent()),
          ],
        ),
      ),
    );
  }
}
