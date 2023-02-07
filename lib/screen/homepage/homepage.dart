import 'package:flutter/material.dart';

import '../../constanta/colors.dart';
import 'homepage_bottom.dart';
import 'homepage_image.dart';
import 'homepage_navbar.dart';
import 'homepage_slider.dart';
import 'homepage_titleText.dart';

import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  void initState() {
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  @override
  void dispose() {
    audioPlayer.dispose();

    super.dispose();
  }

  void seekToSec(int sec) {
    Duration position = Duration(seconds: sec.toInt());
    audioPlayer.seek(position);
    print(position);
  }

  @override
  void didChangeDependencies() {
    print(MediaQuery.of(context));
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    double lengthWith = MediaQuery.of(context).size.width;
    double lengthHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        width: lengthWith,
        height: lengthHeight,
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
            MusicSlider(
              duration: duration,
              position: position,
              audioPlayer: audioPlayer,
            ),
            SizedBox(
              height: 10,
            ),
            BottomBar(isPlaying: isPlaying, audioPlayer: audioPlayer),
          ],
        ),
      ),
    );
  }
}

String formatTime(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');

  final hours = twoDigits(duration.inHours);

  final minutes = twoDigits(duration.inMinutes.remainder(60));

  final seconds = twoDigits(duration.inSeconds.remainder(60));

  return [
    if (duration.inHours > 0) hours,
    minutes,
    seconds,
  ].join(":");
}
