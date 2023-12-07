import 'dart:math';
import 'dart:math';

import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int leftdice = 2;
  int rightdice = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Тапшырма 5',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
      ),
      backgroundColor: Color(0xffFFE93B),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  leftdice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset(
                'assets/images/dice_$leftdice.png',
                height: 145,
              ),
            ),
            SizedBox(
              width: 35,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  rightdice = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset(
                'assets/images/dice_$rightdice.png',
                height: 145,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
