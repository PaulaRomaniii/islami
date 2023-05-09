import 'package:flutter/material.dart';

import '../Verses_Widget.dart';

class HadeethDetails_ extends StatefulWidget {
  static const String routeName = "HadeethDetails";

  @override
  State<HadeethDetails_> createState() => _HadeethDetails_State();
}

class _HadeethDetails_State extends State<HadeethDetails_> {
  @override
  Widget build(BuildContext context) {
    VersesWidget arg =
        (ModalRoute.of(context)?.settings.arguments) as VersesWidget;
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
            arg.title,
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
                          child: Text(
                        arg.content.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      )),
                  itemCount: arg.content.length),
            ),
          ],
        ),
      ),
    );
  }
}
