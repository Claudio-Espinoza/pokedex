import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex_demo/common/enum/type_colors.dart';
import 'package:pokedex_demo/common/helper/util.dart';
import 'package:pokedex_demo/common/widget/pokemon_type.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_themes.dart';
import 'package:pokedex_demo/presentation/pokedex/page/pokedex.dart';

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
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 10),
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
                                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
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
                                        Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text("Tipo",style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500
                                          )),
                                          Wrap(
                                            spacing: 15,
                                            children: widget.pokemon.type.map((String type){
                                              return PokemonType(tipo: type);
                                            }).toList()
                                          ),
                                          const SizedBox(height: 20, width: 20),
                                          const Text("Debilidad",style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500
                                          )),
                                          SizedBox(
                                            width: 300,
                                            height: 100,
                                            child: Wrap(
                                              alignment: WrapAlignment.start,
                                              spacing: 15,
                                              runSpacing: 10,
                                              children: widget.pokemon.about.weaknesses.map((String weaknesses){
                                                return PokemonType(tipo: weaknesses);
                                              }).toList()
                                            ),
                                          ),
                                        ],
                                        ),
                                      ],
                                    
                                    ),
                                  )
],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                  child: Text("Segunda página",
                                      textAlign: TextAlign.center)),
                            ),
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
              child: Container(
                width:_width ,
                child: Image.network( 
                  widget.pokemon.img,
                  scale: 0.4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
              child: Column(
                children: [
                  Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () => Util.redirectToPage(context, const Pokedex()),
                          icon: const Icon(Icons.arrow_back, color: Colors.white,weight: 35,),
                        ),
                      ],
                    ),
                    Title(
                      color: Colors.white,
                      child: Text(
                        widget.pokemon.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(width: 30),
                  ],
                              ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
