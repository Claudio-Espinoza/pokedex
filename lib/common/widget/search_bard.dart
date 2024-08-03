import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const SearchInput({
    super.key,
    required this.controller,
    this.labelText = 'Buscar Pokémon',
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
      onSubmitted: (text) {
        print('Input: $text');
      },
    );
  }
}
