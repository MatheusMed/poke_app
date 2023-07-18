import 'package:flutter/material.dart';

import '../../../core/failure/search_failure.dart';
import '../../../domain/entities/pokemon_entities.dart';
import '../../../domain/usescases/pokemon_usescases.dart';

class PokemonControllers extends ChangeNotifier {
  final PokemonUsescases _iPokemonUsescases;

  PokemonControllers(this._iPokemonUsescases);

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
}
