import 'package:flutter/material.dart';

class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Pagina'),
      ),
      body: const Center(
        child: Text(
          'Vista de team',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
