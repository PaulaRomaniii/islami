import 'package:flutter/material.dart';
import 'package:learning_flutter/hadith_tabs/hadeeth_screen.dart';
import 'package:learning_flutter/quran_tabs/quran_screen.dart';
import 'package:learning_flutter/radio_tabs/radio_screen.dart';
import 'package:learning_flutter/sebha_tabs/tasbeh_screen.dart';

class allTheme extends StatefulWidget {
  static const String routename = "Start_Page";

  @override
  State<allTheme> createState() => _allThemeState();
}

class _allThemeState extends State<allTheme> {
  int selectedindex = 0;

  List<Widget> screens = [Radio_(), Tasbeh_(), Hadeeth_(), Quran_()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/default_bg.png"),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "إســلامــي",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: screens[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: (int index) {
            setState(() {
              selectedindex = index;
            });
          },
          currentIndex: selectedindex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/icon_radio.png"),
                  color: Colors.white,
                ),
                label: "راديو",
                backgroundColor: Color(0xFFB7935F)),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/icon_sebha.png"),
                  color: Colors.white,
                ),
                label: "سبحة",
                backgroundColor: Color(0xFFB7935F)),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/icon_hadeth.png"),
                  color: Colors.white,
                ),
                label: "حديث",
                backgroundColor: Color(0xFFB7935F)),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/icon_quran.png"),
                  color: Colors.white,
                ),
                label: "قرآن",
                backgroundColor: Color(0xFFB7935F)),
          ],
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.black, size: 30),
          unselectedIconTheme: const IconThemeData(
            size: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
