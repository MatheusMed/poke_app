import 'package:flutter/material.dart';
import 'package:poke_app/presenter/search_view/list_pokemons.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ListPokemons(),
      theme: ThemeData.dark(useMaterial3: true),
    );
  }
}
