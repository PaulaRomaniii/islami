import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_flutter/Verses_Widget.dart';
import 'package:learning_flutter/quran_tabs/sent_arguments.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "suraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> Verses = [];

  @override
  Widget build(BuildContext context) {
    sentArg args = (ModalRoute.of(context)?.settings.arguments) as sentArg;

    if (Verses.isEmpty) Readfile(args.index + 1);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/default_bg.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "${args.index}",
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            Card(
              color: Colors.grey,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular((35.0))),
              child: ListView.builder(
                  itemBuilder: (context, index) => Center(
                        child: VersesWidget(
                          content: Verses[index],
                          index: index + 1,
                        ),
                      ),
                  itemCount: Verses.length),
            ),
          ],
        ),
      ),
    );
  }

  void Readfile(int textindex) async {
    String TextsContent =
        await rootBundle.loadString(("assets/texts/$textindex.txt"));

    List<String> lines = TextsContent.trim().split('\n');
    setState(() {
      Verses = lines;
    });
  }
}
