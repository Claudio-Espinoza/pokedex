import 'package:flutter/material.dart';
import 'package:pokedex_demo/presentation/landing/widget/header_landing.dart';

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
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.green,
                child: const Center(child: Text('Component 2')),
              ),
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
