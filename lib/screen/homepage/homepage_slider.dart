import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player/screen/homepage/homepage.dart';

import '../../constanta/colors.dart';

class MusicSlider extends StatefulWidget {
  Duration? position;
  Duration? duration;
  AudioPlayer? audioPlayer;
  MusicSlider({super.key, this.position, this.duration, this.audioPlayer});

  @override
  State<MusicSlider> createState() => _MusicSliderState();
}

class _MusicSliderState extends State<MusicSlider> {
  @override
  Widget build(BuildContext context) {
    double slider = 0.1;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          formatTime(widget.position!),
          style: TextStyle(
            color: colorItem,
          ),
        ),
        Slider.adaptive(
          activeColor: Colors.blue.shade800,
          inactiveColor: Colors.grey.shade300,
          min: 0.0,
          max: widget.duration!.inSeconds.toDouble() < 0.0
              ? 0
              : widget.duration!.inSeconds.toDouble(),
          value: widget.position!.inSeconds.toDouble(),
          onChanged: (double value) {
            setState(() {
              Duration position = Duration(seconds: value.toInt());

              widget.audioPlayer!.seek(position);

              print(position);
            });
          },
        ),
        Text(
          formatTime(widget.duration! - widget.position!),
          style: TextStyle(
            color: colorItem,
          ),
        ),
      ],
    );
  }
}
