import 'package:flutter/material.dart';
import 'package:pokedex_demo/presentation/landing/widget/header_landing.dart';
import 'package:pokedex_demo/presentation/landing/widget/presentation_article.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
              flex: 1,
              child: HeaderLanding(),
            ),
            const Flexible(
              flex: 3,
              child: PresentationArticle(),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.blue,
                child: const Center(child: Text('Component 3')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
