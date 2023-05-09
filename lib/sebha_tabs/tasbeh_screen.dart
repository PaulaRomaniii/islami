import 'package:flutter/material.dart';

class Tasbeh_ extends StatefulWidget {
  @override
  State<Tasbeh_> createState() => _Tasbeh_State();
}

int index = 0;
int cntr = 0;

class _Tasbeh_State extends State<Tasbeh_> {
  List<String> kol_el_tasbi7 = [
    "assets/images/sobha7an allahhhh.png",
    "assets/images/allah w akbar.png",
    "assets/images/ast8far.png"
  ];

  String sebha_pic = "assets/images/sebh7aaa.png";
  double turn_around = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //mainAxisAlignment: MainAxisAlignment.center,
      const Image(
          image: AssetImage("assets/images/head of seb7a.png"), height: 100),
      AnimatedRotation(
        turns: turn_around,
        duration: const Duration(seconds: 1),
        child: const Image(
          image: AssetImage("assets/images/sebh7aaa.png"),
          height: 200,
        ),
      ),

      Container(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
      ),
      const Text(
        "عدد التسبيحات",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),

      Container(
        padding: const EdgeInsets.all(10.0),
      ),
      Container(
        height: 85,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromRGBO(183, 147, 95, 100),
        ),
        alignment: Alignment.center,
        child: Text(
          cntr.toString(),
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      IconButton(
        onPressed: () {
          setState(() => turn_around += 1 / 33);
          {
            if (cntr == 33) {
              cntr = -1;
              if (index == 2) {
                index = -1;
              }
              index++;
            }
            cntr++;
            //print(cntr);
          }
          ;
        },
        icon: Image.asset(kol_el_tasbi7[index]),
        iconSize: 150,
      ),
    ]);
  }
}
