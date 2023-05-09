import 'package:flutter/material.dart';

class Radio_ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Image(image: AssetImage("assets/images/radio_image.png")),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 30),
      ),
      const Text(
        "إذاعـــة القــرآن الكــريم",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 11),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.skip_previous_rounded),
              color: const Color(0xFFB7935F),
              iconSize: 50),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow_rounded),
            color: const Color(0xFFB7935F),
            iconSize: 90,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.skip_next_rounded),
            color: const Color(0xFFB7935F),
            iconSize: 50,
          ),
        ],
      )
    ]);
  }
}
