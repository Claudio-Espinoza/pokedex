import 'package:flutter/material.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_layer.dart';
import 'package:pokedex_demo/common/widget/search_bard.dart';


class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context) {
  final TextEditingController searchController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, right: AppLayer.marginHorizontal, left: AppLayer.marginHorizontal ),
        child: Column(
          
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Stack(
                
                children: [
                  const Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    child: Icon(Icons.arrow_back
                    ),
                  ),
                  Center(
                    child: Title(
                      color: Colors.black,
                      child: const Text(
                        "Pokédex",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                child:SearchInput(controller: searchController),
              ),
            ),
              
          ],
        ),
      ),
    );
  }
}
