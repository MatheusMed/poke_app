import 'package:flutter/material.dart';
import 'package:poke_app/presenter/pokemons_view/widgets/pokemon_details.dart';

import '../../../domain/entities/pokemon_entities.dart';
import '../controllers/pokemon_controllers.dart';

class ListPokemonsWidget extends StatelessWidget {
  final ValueNotifier<bool> loading;
  final ValueNotifier<List<PokemonsEntities>> listPokemons;
  final PokemonControllers controller;

  const ListPokemonsWidget({
    Key? key,
    required this.loading,
    required this.listPokemons,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: loading,
        builder: (context, loading, _) {
          return loading == true
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ValueListenableBuilder(
                  valueListenable: listPokemons,
                  builder: (context, listPokemons, child) {
                    return listPokemons.isNotEmpty
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemCount: listPokemons.length,
                            itemBuilder: (context, index) {
                              var pokemon = listPokemons[index];
                              return Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PokemonDetails(
                                            pokemonsEntities: pokemon,
                                            controller: controller,
                                          ),
                                        ));
                                  },
                                  title: Text(pokemon.name),
                                  leading: Hero(
                                    tag: pokemon.name,
                                    child: Image.network(
                                      fit: BoxFit.cover,
                                      alignment: Alignment.center,
                                      pokemon.image,
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        : const Center(
                            child: SizedBox(
                              child: Text('Erro ao Fazer a requisicao'),
                            ),
                          );
                  },
                );
        });
  }
}
