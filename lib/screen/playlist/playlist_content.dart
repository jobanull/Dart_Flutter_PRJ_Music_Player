import 'package:flutter/material.dart';

class PlaylistContent extends StatelessWidget {
  const PlaylistContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Container(
        margin: EdgeInsets.only(bottom: 30),
        width: 300,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 49, 49, 79),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(3, 3),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Talking To The Moon"),
                Text("Bruno Mars"),
              ],
            ),
            Text("47:07"),
          ],
        ),
      ),
    );
  }
}
