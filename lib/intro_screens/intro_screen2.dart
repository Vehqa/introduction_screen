import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntrodutionPage2 extends StatelessWidget {
  const IntrodutionPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: SvgPicture.asset(
                'assets/images/image2.svg',
                height: 250,
                width: 250,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Expertise à portée de main',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Identification, Soins, Conseils personnalisés - Explorez une expertise pratique pour chaque plante, de l identification à son entretien.',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
