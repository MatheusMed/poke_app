import 'package:flutter/material.dart';
import 'package:poke_app/domain/entities/pokemon_entities.dart';

class PokemonDetails extends StatelessWidget {
  final PokemonsEntities pokemonsEntities;
  const PokemonDetails({
    super.key,
    required this.pokemonsEntities,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemonsEntities.name),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: pokemonsEntities.name,
              child: Image.network(
                fit: BoxFit.contain,
                height: 250,
                alignment: Alignment.center,
                pokemonsEntities.image,
              ),
            ),
            const Text(
              'Habilidades',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            ListView.builder(
                itemCount: pokemonsEntities.abilities.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final abiliti = pokemonsEntities.abilities[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        abiliti.ability.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      )
                    ],
                  );
                }),
            const Text(
              'Tipo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
                itemCount: pokemonsEntities.types.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final type = pokemonsEntities.types[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        type.type.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      )
                    ],
                  );
                }),
            Column(
              children: [
                const Text(
                  'Peso',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  pokemonsEntities.weight.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
