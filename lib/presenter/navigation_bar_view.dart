import 'package:flutter/material.dart';
import 'package:poke_app/presenter/pokemon_favorite/pokemon_favorite_view.dart';
import 'package:poke_app/presenter/pokemons_view/list_pokemons.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({super.key});

  @override
  State<NavigationBarView> createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  int _indexSelectedView = 0;

  static final List<Widget> widgetViews = <Widget>[
    const ListPokemons(),
    const PokemonFavoriteView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _indexSelectedView = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista de Pokemons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Lista de Pokemons Favoritos',
          ),
        ],
        currentIndex: _indexSelectedView,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: widgetViews.elementAt(_indexSelectedView),
    );
  }
}
