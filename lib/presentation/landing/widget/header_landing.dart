import 'package:flutter/material.dart';
import 'package:pokedex_demo/common/widget/search_bard.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';

class HeaderLanding extends StatelessWidget {
  const HeaderLanding({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: AppLayer.marginVertical - 10,
          left: AppLayer.marginHorizontal,
          right: AppLayer.marginHorizontal,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pokedex',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SearchInput(controller: searchController),
          ],
        ),
      ),
    );
  }
}
