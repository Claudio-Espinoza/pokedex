import 'package:flutter/material.dart';
import 'package:pokedex_demo/presentation/pokedex/page/pokedex.dart';
import 'package:pokedex_demo/presentation/team/page/team.dart';

class OptionLanding extends StatefulWidget {
  const OptionLanding({super.key});

  @override
  State<OptionLanding> createState() => _OptionLandingState();
}

class _OptionLandingState extends State<OptionLanding> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => redirectToPage(const Team()),
              child: const Text('Ir a Primera Página'),
            ),
            ElevatedButton(
              onPressed: () => redirectToPage(const Pokedex()),
              child: const Text('Ir a Segunda Página'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> redirectToPage(Widget page) async {
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }
}
