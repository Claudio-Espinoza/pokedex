import 'package:flutter/material.dart';

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Pagina'),
      ),
      body: const Center(
        child: Text(
          'Vista de pokedex',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
