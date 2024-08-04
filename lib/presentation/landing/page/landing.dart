import 'package:flutter/material.dart';
import 'package:pokedex_demo/presentation/landing/widget/header_landing.dart';
import 'package:pokedex_demo/presentation/landing/widget/option_landing.dart';
import 'package:pokedex_demo/presentation/landing/widget/presentation_landing.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: HeaderLanding(),
            ),
            Flexible(
              flex: 3,
              child: PresentationArticle(),
            ),
            Flexible(
              flex: 2,
              child: OptionLanding(),
            ),
          ],
        ),
      ),
    );
  }
}
