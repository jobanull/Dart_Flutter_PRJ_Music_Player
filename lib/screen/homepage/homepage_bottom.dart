import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
