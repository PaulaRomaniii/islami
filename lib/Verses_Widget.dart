import 'package:flutter/material.dart';

class VersesWidget extends StatelessWidget {
  late String title;
  late String content;
  late int index;

  VersesWidget({required this.content, required this.index, title = ""});

  VersesWidget.init({required this.content, required this.title, index = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Text(
        "$content($index)",
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
