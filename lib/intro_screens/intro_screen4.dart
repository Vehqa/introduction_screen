import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntrodutionPage4 extends StatelessWidget {
  const IntrodutionPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: SvgPicture.asset(
              'assets/images/image4.svg',
              height: 250,
              width: 250,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Votre Terrain de Jeux',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              'Transformez votre espace intérieur en oasis apaisante avec des conseils pratiques pour une décoration florale éclatante.',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
