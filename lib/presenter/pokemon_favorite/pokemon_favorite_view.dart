import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:poke_app/domain/entities/pokemon_entities.dart';
import 'package:poke_app/presenter/pokemon_favorite/widgets/list_pokemon_favorite.dart';

import '../../core/services/dio_services.dart';
import '../../data/database/hive_implements.dart';
import '../../data/datasource/pokemon_datasource.dart';
import '../../data/repositories/pokemon_repository_data.dart';
import '../../domain/usescases/pokemon_usescases.dart';
import '../pokemons_view/controllers/pokemon_controllers.dart';

class PokemonFavoriteView extends StatefulWidget {
  const PokemonFavoriteView({super.key});

  @override
  State<PokemonFavoriteView> createState() => _PokemonFavoriteViewState();
}

class _PokemonFavoriteViewState extends State<PokemonFavoriteView> {
  List<PokemonsEntities> listaPokemon = [];

  final controller = PokemonControllers(
    PokemonUsescases(
      PokemonRepositoryData(
        PokemonDatasource(
          DioServices(),
        ),
      ),
    ),
    HiveImplements(),
  );

  @override
  void initState() {
    initBox();
    super.initState();
  }

  void initBox() async {
    Box boxList = Hive.box('pokemonFavoritos');
    for (var element in boxList.values) {
      setState(() {
        listaPokemon.add(element);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemons Favoritos'),
      ),
      body: ListPokemonFavorite(
        listPokemons: listaPokemon,
        controller: controller,
      ),
    );
  }
}
