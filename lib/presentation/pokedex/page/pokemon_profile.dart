import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex_demo/common/enum/type_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_themes.dart';

import '../../../domain/model/pokemon.dart';

class PokemonProfile extends StatefulWidget {
  const PokemonProfile({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;
  @override
  _PokemonProfileState createState() => _PokemonProfileState();
}

class _PokemonProfileState extends State<PokemonProfile> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Container(
            width:_width,
            color: TypeColor.pokemonTypeColors[widget.pokemon.type[0]],
            height: _height * 1.65,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: _width,
              height: _height * 0.55,
              decoration: const BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      const TabBar(
                        labelPadding:  EdgeInsets.symmetric(horizontal: 10),
                        labelStyle:  TextStyle(fontSize: 12),
                        unselectedLabelStyle: TextStyle(fontSize: 12),
                        tabs: <Widget>[
                          Tab(text: "Información"),
                          Tab(text: "Estadística Básica"),
                          Tab(text: "Evolución"),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(22.0),
                                        child: Column(
                                          
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Categoria",textAlign: TextAlign.left, style: AppThemes.profileLabelTextStyle),
                                            Text("Altura",textAlign: TextAlign.left, style: AppThemes.profileLabelTextStyle),
                                            Text("Peso",textAlign: TextAlign.left, style: AppThemes.profileLabelTextStyle),
                                            Text("Habilidad",textAlign: TextAlign.left, style: AppThemes.profileLabelTextStyle),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 22),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(widget.pokemon.type[0], style: AppThemes.profileFliedTextStyle,),
                                            Text(widget.pokemon.about.height, style: AppThemes.profileFliedTextStyle),
                                            Text(widget.pokemon.about.weight, style: AppThemes.profileFliedTextStyle),
                                            Text("obtenerhabilidad", style: AppThemes.profileFliedTextStyle)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 22,bottom: 40),
                                    child: Row(
                                      
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          color: Colors.green 
                                        ,child: const Text("Tipo",)),
                                      ],
                                    
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 22),
                                    child: Row(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          color: Colors.green 
                                        ,child: const Text("Debilidad")),
                                      ],
                                    ),
                                  )],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                  child: Text("Segunda página",
                                      textAlign: TextAlign.center)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                  child: Text("Tercera página",
                                      textAlign: TextAlign.center)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: _height * 0.2,
            child: Container(
              padding: const EdgeInsets.all(0),
              //color: Colors.black,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      strokeAlign: BorderSide.strokeAlignCenter)),
              height: 250,
              width: _width,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                  ),
                  Image.network(fit: BoxFit.contain, widget.pokemon.img),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
