enum Type {

  normal(path: 'assets/icon/elements/tipo-normal.png', type: "Normal"),
  fire(path: 'assets/icon/elements/tipo-fuego.png', type: "Fire"),
  water(path: 'assets/icon/elements/tipo-agua.png', type: "Water"),
  grass(path: 'assets/icon/elements/tipo-planta.png', type: "Grass"),
  electric(path: 'assets/icon/elements/tipo-electrico.png', type: "Electric"),
  ice(path: 'assets/icon/elements/tipo-hielo.png', type: "Ice"),
  fighting(path: 'assets/icon/elements/tipo-lucha.png', type: "Fighting"),
  poison(path: 'assets/icon/elements/tipo-veneno.png', type: "Poison"),
  ground(path: 'assets/icon/elements/tipo-tierra.png', type: "Ground"),
  flying(path: 'assets/icon/elements/tipo-volador.png', type: "Flying"),
  psychic(path: 'assets/icon/elements/tipo-psiquico.png', type: "Psychic"),
  bug(path: 'assets/icon/elements/tipo-bicho.png', type: "Bug"),
  rock(path: 'assets/icon/elements/tipo-roca.png', type: "Rock"),
  ghost(path: 'assets/icon/elements/tipo-fantasma.png', type: "Ghost"),
  dragon(path: 'assets/icon/elements/tipo-dragon.png', type: "Dragon");

 

  

  const Type({ 
    required this.path,
    required this.type
  });
  final String path;
  final String type;
  

}