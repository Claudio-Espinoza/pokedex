import 'package:flutter/material.dart';
import 'package:pokedex_demo/common/enum/type_colors.dart';
import 'package:pokedex_demo/common/helper/util.dart';

import 'package:pokedex_demo/core/configs/themes/app_colors.dart';
import 'package:pokedex_demo/domain/model/team.dart';
import 'package:pokedex_demo/domain/service/team_service.dart';
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
            width: _width,
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
              child: DefaultTabController(
                initialIndex: 0,
                length: 3,
                child: Column(
                  children: [
                    const TabBar(
                      labelStyle: TextStyle(
                        fontFamily: 'LeagueSpartan',
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                      unselectedLabelStyle: TextStyle(
                        fontFamily: 'LeagueSpartan',
                        fontWeight: FontWeight.w300,
                        fontSize: 14),
                      isScrollable: false,
                      //labelPadding: EdgeInsets.only(right: 20.0),

                      tabs: <Widget>[
                        Tab(text: "Información"),
                        Tab(text: "Estadística Básica"),
                        Tab(text: "Evolución"),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        child: TabBarView(
                          children: [
                            InformationPokemonProfile(pokemon: widget.pokemon),
                            BasicStatPokemonProfile(pokemon: widget.pokemon),
                            const Text("Tercera página", textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ),
                  ],
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
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: 
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () => Util.redirectToPage(context, const Pokedex()),
                        icon: const Icon(Icons.arrow_back, color: Colors.white, size: 36,),
                      ),
                      Text(
                        "${widget.pokemon.name}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                        ),
                        RawMaterialButton(
                          onPressed: () async {
                            TeamService teamService = TeamService();
                            List<Team> teams = await teamService.getAllTeam(); // Obtener todos los equipos
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: _height * .55, // Ajusta la altura del modal si es necesario
                                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Selecciona un equipo para agregar a ${widget.pokemon.name}",
                                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                                      ),
                                      const SizedBox(height: 20),
                                      Expanded(
                                        child: ListView.builder(
                                          //padding: EdgeInsets.only(bottom: 30),
                                          itemCount: teams.length,
                                          itemBuilder: (context, index) {
                                            Team team = teams[index];
                                            return ListTile(
                                              selected: true,
                                              title: Text(team.nameTeam, 
                                              style: const TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w500
                                              ),), // Nombre del equipo
                                              subtitle: Text('${team.pokemonTeam.length}/${team.maxPokemon} Pokémon',
                                              style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300

                                              ),),
                                              //trailing: Icon(Icons.add_circle,color: TypeColor.pokemonTypeColors[widget.pokemon.type[0]], size: 30,),
                                              onTap: () async {
                                                if (team.pokemonTeam.length < team.maxPokemon) {
                                                  // Crear el objeto PokemonTeam basado en el Pokémon actual
                                                  PokemonTeam newPokemon = PokemonTeam(
                                                    numTeam: widget.pokemon.id.toString(),
                                                    namePokemon: widget.pokemon.name,
                                                    imgTeam: widget.pokemon.img,
                                                    attackTeam: widget.pokemon.stats.attack.toString(),
                                                    defenseTeam: widget.pokemon.stats.defense.toString(),
                                                    hpTeam: widget.pokemon.stats.hp.toString(),
                                                  );

                                                  // Agregar el Pokémon al equipo
                                                  await teamService.addPokemonToTeam(index, newPokemon);

                                                  Navigator.pop(context); // Cerrar el modal
                                                } else {
                                                  // Mostrar un mensaje de error si el equipo está lleno
                                                 showDialog(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return AlertDialog(
                                                        backgroundColor: TypeColor.pokemonTypeColors[widget.pokemon.type[0]],
                                                        title: const Text('Equipo lleno', style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 22
                                                        ),),
                                                        content: Text('El equipo ${team.nameTeam} está lleno',
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 22
                                                        )),
                                                        actions: <Widget>[
                                                          TextButton(
                                                            onPressed: () {
                                                              Navigator.of(context).pop();
                                                            },
                                                            child: const Text('OK',
                                                            style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 18
                                                        )),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                }
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          fillColor: Colors.white,
                          padding: const EdgeInsets.all(0),
                          shape: const CircleBorder(),
                          child: Icon(
                            Icons.add,
                            size: 32,
                            color: TypeColor.pokemonTypeColors[widget.pokemon.type[0]],
                          ),
                        )
                      
                    ],
                  ),
                
            ),
        ],
      ),
    );
  }
}

