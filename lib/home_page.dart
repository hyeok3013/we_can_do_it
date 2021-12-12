import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'dart:math';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class HomePage extends StatelessWidget {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      child: Text(
                        famousSaying[random.nextInt(famousSaying.length)],
                        style: mainTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/motivation.png'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
