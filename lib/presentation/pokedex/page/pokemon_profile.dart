import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex_demo/common/enum/type_colors.dart';
import 'package:pokedex_demo/common/helper/util.dart';

import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/presentation/pokedex/page/pokedex.dart';
import 'package:pokedex_demo/presentation/pokedex/widget/basic_stat_pokemon_profile.dart';
import 'package:pokedex_demo/presentation/pokedex/widget/information_pokemon_profile.dart';

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
    print(widget.pokemon.name);
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
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
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
                            InformationPokemonProfile(pokemon: widget.pokemon),
                            BasicStatPokemonProfile(pokemon: widget.pokemon),
                            const Padding(
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
            top: _height * 0.1,
              child: SizedBox(
                width:_width ,
                child: Image.network( 
                  widget.pokemon.img,
                  scale: 0.4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
              child: 
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Util.redirectToPage(context, const Pokedex()),
                        icon: const Icon(Icons.arrow_back, color: Colors.white, size: 38,),
                      ),
                      Text(
                        widget.pokemon.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                        ),
                      RawMaterialButton(
                          onPressed: () => Util.redirectToPage(context, const Pokedex()),
                          fillColor: Colors.white,
                          padding: const EdgeInsets.all(3.0),
                          shape: const CircleBorder(),
                          child: Icon(
                            Icons.add,
                            size: 33,
                            color: TypeColor.pokemonTypeColors[widget.pokemon.type[0]],
                          ),    
                        ),
                      
                    ],
                  ),
                
            ),
        ],
      ),
    );
  }
}

