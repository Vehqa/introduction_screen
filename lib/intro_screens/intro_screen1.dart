import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntrodutionPage1 extends StatelessWidget {
  const IntrodutionPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: SvgPicture.asset(
                'assets/images/image1.svg',
                width: 250,
                height: 250,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Savoir Vert, Jardinier connecté',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Conseils, Rappels, Gestion Simplifiée - Votre allié pour une gestion aisée et informée de votre jardin.',
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
