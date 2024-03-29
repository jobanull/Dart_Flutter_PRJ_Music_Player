import 'package:flutter/material.dart';

import '../../constanta/colors.dart';

class PlayListNavbar extends StatelessWidget {
  const PlayListNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: colorItem,
            size: 40,
          ),
        ),
        SizedBox(width: 50),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Text(
            "My Playlist",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        SizedBox(width: 50),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.search,
              color: colorItem,
              size: 25,
            ),
          ),
        ),
      ],
    );
  }
}
