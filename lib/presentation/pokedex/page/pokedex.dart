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
        padding: const EdgeInsets.only(top: 80, right: AppLayer.marginHorizontal, left: AppLayer.marginHorizontal ),
        child: Column(
        
          
          children: [
        
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Icon(Icons.arrow_back, size: 30,),
                    ],
                  ),
                  Title(
                    color: Colors.black,
                    child: const Text("Pokédex",style: 
                    TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
                    ),
                      ),
                Container(width: 30,)], // Este container me permite usar el spaceBetween para tener el Titulo al centro y la flecha a la izquierda de la manera mas limpia que encontre
              ),    
              Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 20),
              child: SearchInput(controller: searchController)),
              Container(
                height: 70,

                child:
                  ListView(
                    
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(width: 70, height: 70, color: Colors.red, margin: const EdgeInsets.only(right: 10)),
                      Container(width: 70, height: 70, color: Colors.red, margin: const EdgeInsets.only(right: 10)),
                      Container(width: 70, height: 70, color: Colors.red, margin: const EdgeInsets.only(right: 10)),
                      Container(width: 70, height: 70, color: Colors.red, margin: const EdgeInsets.only(right: 10)),
                      Container(width: 70, height: 70, color: Colors.red, margin: const EdgeInsets.only(right: 10)),
                      Container(width: 70, height: 70, color: Colors.red, margin: const EdgeInsets.only(right: 10)),
                      Container(width: 70, height: 70, color: Colors.red, margin: const EdgeInsets.only(right: 10)),
                      Container(width: 70, height: 70, color: Colors.red, margin: const EdgeInsets.only(right: 10)),
                      Container(width: 70, height: 70, color: Colors.red, margin: const EdgeInsets.only(right: 10)),
                      Container(width: 70, height: 70, color: Colors.red, margin: const EdgeInsets.only(right: 10)),

                    ],
                  ),

              )
                ],
              ),
            ),
           
    
    );
  }
}
