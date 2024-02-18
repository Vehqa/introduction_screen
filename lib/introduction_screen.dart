import 'package:flutter/material.dart';
import 'package:introduction_screen/home.dart';
import 'package:introduction_screen/intro_screens/intro_screen1.dart';
import 'package:introduction_screen/intro_screens/intro_screen2.dart';
import 'package:introduction_screen/intro_screens/intro_screen3.dart';
import 'package:introduction_screen/intro_screens/intro_screen4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final PageController _controller = PageController();

  bool lastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              lastPage = (index == 3);
            });
          },
          children: const [
            IntrodutionPage1(),
            IntrodutionPage2(),
            IntrodutionPage3(),
            IntrodutionPage4(),
          ],
        ),
        Container(
          alignment: const Alignment(0, 0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(3);
                },
                child: const Text('Skip'),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: const WormEffect(
                    dotHeight: 16,
                    dotWidth: 16,
                    type: WormType.thin,
                    activeDotColor: Colors.black),
              ),
              lastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const HomePage();
                        }));
                      },
                      child: const Text('Done'),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear);
                      },
                      child: const Text('Next'),
                    )
            ],
          ),
        )
      ],
    ));
  }
}
