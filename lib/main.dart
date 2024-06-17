import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(225, 30, 30, 30),
            Color.fromARGB(225, 103, 72, 72)
        ),
      )
    )
  );
}




