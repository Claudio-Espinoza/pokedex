import 'package:flutter/material.dart';
import 'package:pokedex_demo/common/enum/type_colors.dart';
import 'package:pokedex_demo/core/configs/themes/app_colors.dart';

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Container(
            width: width,
            color: TypeColor.pokemonTypeColors[widget.pokemon.type[0]],
            height: height * 1.65,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: width,
              height: height * 0.55,
              decoration: const BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        labelPadding: EdgeInsets.symmetric(horizontal: 10),
                        labelStyle: TextStyle(fontSize: 12),
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
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                  child: Text("Primera página",
                                      textAlign: TextAlign.center)),
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
            top: height * 0.2,
            child: Container(
              padding: const EdgeInsets.all(0),
              //color: Colors.black,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      strokeAlign: BorderSide.strokeAlignCenter)),
              height: 250,
              width: width,

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
