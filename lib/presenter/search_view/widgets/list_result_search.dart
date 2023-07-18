import 'package:flutter/material.dart';
import 'package:poke_app/presenter/search_view/widgets/pokemon_details.dart';

import '../../../domain/entities/pokemon_entities.dart';

class ListResultSearch extends StatelessWidget {
  final ValueNotifier<bool> loading;
  final ValueNotifier<List<PokemonsEntities>> listaSearch;

  const ListResultSearch({
    Key? key,
    required this.loading,
    required this.listaSearch,
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
                  valueListenable: listaSearch,
                  builder: (context, listaSearch, child) {
                    return listaSearch.isNotEmpty
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemCount: listaSearch.length,
                            itemBuilder: (context, index) {
                              var pokemon = listaSearch[index];
                              return Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PokemonDetails(
                                              pokemonsEntities: pokemon),
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
