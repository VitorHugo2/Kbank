// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class Transacao extends StatelessWidget {
  Icon icone;
  String titulo;
  Transacao({super.key, required this.icone, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        width: 70,
        height: 100,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(100),
                    splashColor: const Color.fromARGB(255, 255, 255, 255),
                    enableFeedback: true,
                    onTap: () {
                      print("ola");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 26, 25, 25),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: icone,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              titulo,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
