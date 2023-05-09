import 'package:flutter/material.dart';
import 'package:learning_flutter/quran_tabs/sent_arguments.dart';
import 'package:learning_flutter/quran_tabs/sura_details_screen.dart';

class suraTitleWidget extends StatelessWidget {
  String title;
  int index;

  suraTitleWidget({required this.title, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
            arguments: sentArg(title: title, index: index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
