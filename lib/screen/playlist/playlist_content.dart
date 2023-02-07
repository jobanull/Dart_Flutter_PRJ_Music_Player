import 'package:flutter/material.dart';
import 'package:music_player/screen/homepage/homepage.dart';

import '../../constanta/colors.dart';
import '../../model/model.dart';

class PlaylistContent extends StatelessWidget {
  const PlaylistContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listofMusic.length,
      itemBuilder: (context, index) {
        final musik = listofMusic[index];
        return GestureDetector(
          onTap: () {
            // Navigator.pushReplacement(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => HomePage(),
            //     ));

            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 30),
            width: 300,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: playlistContent,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(width: 10),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(musik.image!),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        musik.name!,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: "Cardo"),
                      ),
                      Text(
                        musik.title!,
                        style: TextStyle(
                          color: colorItem,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    musik.duration!,
                    style: TextStyle(
                      color: colorItem,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
