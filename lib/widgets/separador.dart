// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Separador extends StatelessWidget {
  const Separador({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        decoration: BoxDecoration(
          border:
              Border.all(width: 1, color: Color.fromARGB(36, 255, 255, 255)),
        ),
      ),
    );
  }
}
