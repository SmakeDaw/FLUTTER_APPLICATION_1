import 'package:flutter/material.dart';
import 'gradient_container.dart';



void main() {
  runApp(
   const MaterialApp(
    title: 'Flutter Demo',
    home: Scaffold(
      body: GradientContainer(Color.fromARGB(255, 224, 154, 133), 
                                Color.fromARGB(255, 236, 51, 51),)
      ),
    ),
  );
}


