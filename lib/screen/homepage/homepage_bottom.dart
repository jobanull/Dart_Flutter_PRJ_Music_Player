import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../constanta/colors.dart';

class BottomBar extends StatefulWidget {
  bool? isPlaying;
  AudioPlayer? audioPlayer;
  BottomBar({super.key, required this.isPlaying, required this.audioPlayer});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    double lengthWith = MediaQuery.of(context).size.width;
    double lengthHeight = MediaQuery.of(context).size.height;
    return Row(
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
          width: lengthWith * 0.11,
          height: lengthHeight * 0.07,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: IconButton(
            onPressed: () async {
              if (widget.isPlaying!) {
                await widget.audioPlayer!.pause();
              } else {
                await widget.audioPlayer!.play(
                  AssetSource("music/in_the_end.mp3"),
                );
              }
            },
            icon: Icon(
              widget.isPlaying! ? Icons.pause : Icons.play_arrow,
              size: 35,
              color: play,
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
    );
  }
}
