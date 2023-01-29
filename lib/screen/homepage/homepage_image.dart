import 'package:flutter/material.dart';

class BoxImage extends StatelessWidget {
  const BoxImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://arrestedmotion.com/wp-content/uploads/2014/05/616515_10152066692091824_6213012444805050146_o.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(40),
        color: Colors.blue,
      ),
    );
  }
}
