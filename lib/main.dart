import 'package:flutter/material.dart';
import 'package:learning_flutter/quran_tabs/sura_details_screen.dart';

import 'all_theme.dart';
import 'hadith_tabs/hadeeth_details_screeen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Islami App",
    routes: {
      allTheme.routename: (BuildContext context) => allTheme(),
      SuraDetails.routeName: (BuildContext context) => SuraDetails(),
      HadeethDetails_.routeName: (BuildContext context) => HadeethDetails_(),
    },
    initialRoute: allTheme.routename,
  ));
}
/*
class myApp extends StatelessWidget{
  const myApp ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Islami",
      // home: allTheme(),
      routes: {
        allTheme.routename : (BuildContext context) => allTheme()
      },
      initialRoute: allTheme.routename,
    );
  }
}
*/
