import 'package:flutter/material.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: beginAlignment,
                end: endAlignment,
                colors: [Colors.amber, Colors.deepOrange]),
          ),
          child: const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Learn Flutter the fun way!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
