import 'package:flutter/material.dart';
import 'package:poke_app/data/repositories/pokemon_repository_data.dart';
import 'package:poke_app/domain/usescases/pokemon_usescases.dart';
import 'package:poke_app/presenter/search_view/controllers/pokemon_controllers.dart';
import 'package:poke_app/presenter/search_view/widgets/list_result_search.dart';

import '../../core/services/dio_services.dart';
import '../../data/datasource/pokemon_datasource.dart';

class ListPokemons extends StatefulWidget {
  const ListPokemons({super.key});

  @override
  State<ListPokemons> createState() => _ListPokemonsState();
}

class _ListPokemonsState extends State<ListPokemons> {
  final controller = PokemonControllers(
    PokemonUsescases(PokemonRepositoryData(
      PokemonDatasource(
        DioServices(),
      ),
    )),
  );

  int offSet = 25;

  @override
  void initState() {
    super.initState();

    controller.getAllListPokemon(offSet);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Pokemons'),
      ),
      floatingActionButton: ValueListenableBuilder(
          valueListenable: controller.loading,
          builder: (context, loading, _) {
            return loading == true
                ? FloatingActionButton(
                    onPressed: () {},
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : FloatingActionButton.extended(
                    onPressed: () async {
                      setState(() {
                        offSet += 5;
                      });
                      await controller.getAllListPokemon(offSet);
                    },
                    label: const Row(
                      children: [
                        Text('Carregar mais Pokemons'),
                        Icon(Icons.add)
                      ],
                    ),
                  );
          }),
      body: ListResultSearch(
        loading: controller.loading,
        listaSearch: controller.listaPokemon,
      ),
    );
  }
}
