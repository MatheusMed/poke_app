import 'package:flutter/material.dart';
import 'package:poke_app/data/database/i_database_hive.dart';

import '../../../core/failure/search_failure.dart';
import '../../../domain/entities/pokemon_entities.dart';
import '../../../domain/usescases/pokemon_usescases.dart';

class PokemonControllers extends ChangeNotifier {
  final IPokemonUsescases _iPokemonUsescases;
  final IDatabaseHive _databaseHive;

  PokemonControllers(this._iPokemonUsescases, this._databaseHive);

  final listaPokemon = ValueNotifier(<PokemonsEntities>[]);
  final loading = ValueNotifier(false);

  getAllListPokemon(int limit) async {
    try {
      loading.value = true;
      final listaPokemonUseCase = await _iPokemonUsescases.getAll(limit: limit);

      listaPokemon.value = List.from(listaPokemonUseCase);

      loading.value = false;
      notifyListeners();
    } catch (e) {
      throw PokemonFailure(message: e.toString());
    } finally {
      notifyListeners();
      loading.value = false;
    }
  }

  savePokemon(PokemonsEntities pokemonsEntities) async {
    await _databaseHive.savePokemon(pokemonsEntities);
    print('salvou');
  }

  getListPokemonSave() async {
    final lista = await _databaseHive.getListaPokemonSave();
    return lista;
  }

  deletePokemonSave(int index) async {
    return await _databaseHive.deletePokemonSave(index);
  }
}
