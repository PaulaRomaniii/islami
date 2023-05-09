import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Verses_Widget.dart';
import 'hadeeth_details_screeen.dart';
import 'hadith_sent_arguments.dart';

class Hadeeth_ extends StatefulWidget {
  static const String routname = "hadeeth";

  @override
  State<Hadeeth_> createState() => _Hadeeth_State();
}

class _Hadeeth_State extends State<Hadeeth_> {
  late List<Hadis> items;

  Future<void> readHadisFile() async {
    String TextsContent =
        await rootBundle.loadString(("assets/texts/Hadis/ahadeth .txt"));

    List<String> lines = TextsContent.trim().split('#');

    items = lines
        .getRange(1, lines.length)
        .map<Hadis>((String e) => Hadis(e.split('\n')[1].trim(), e))
        .toList();

    setState(() {});
  }

  @override
  void initState() {
    readHadisFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 0, child: Image.asset("assets/images/hadeth_logo.png")),
        const Divider(
          color: Color(0xFFB7935F),
          thickness: 3,
          height: 0.5,
        ),
        const Text(
          "الأحاديث",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(
          color: Color(0xFFB7935F),
          thickness: 3,
          height: 0.5,
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (ctx, index) => ListTile(
              title: Text(
                items[index].title,
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pushNamed(context, HadeethDetails_.routeName,
                    arguments: VersesWidget.init(
                      index: items[index].title,
                      content: items[index].content,
                      title: '',
                    ));
              },
            ),
            itemCount: items.length,
          ),
        )
      ],
    );
  }
}
