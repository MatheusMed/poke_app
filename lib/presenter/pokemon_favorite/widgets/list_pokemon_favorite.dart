import 'package:flutter/material.dart';
import 'package:poke_app/domain/entities/pokemon_entities.dart';

import '../../pokemons_view/controllers/pokemon_controllers.dart';

class ListPokemonFavorite extends StatefulWidget {
  final List<PokemonsEntities> listPokemons;
  final PokemonControllers controller;
  const ListPokemonFavorite({
    super.key,
    required this.listPokemons,
    required this.controller,
  });

  @override
  State<ListPokemonFavorite> createState() => _ListPokemonFavoriteState();
}

class _ListPokemonFavoriteState extends State<ListPokemonFavorite> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.listPokemons.length,
      itemBuilder: (context, index) {
        var pokemon = widget.listPokemons[index];
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: ListTile(
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  widget.listPokemons.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Pokemon deletado com sucesso!')));
              },
              icon: const Icon(
                Icons.delete_forever,
              ),
            ),
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
    );
  }
}
