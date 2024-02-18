import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntrodutionPage3 extends StatelessWidget {
  const IntrodutionPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: SvgPicture.asset(
                'assets/images/image3.svg',
                height: 250,
                width: 250,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Bouquets Express, Et Créatifs',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Compositions, Inspirations, Commandes Faciles - Libérez votre créativité avec des compositions florales express.',
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
