import 'package:flutter/material.dart';
import 'package:poke_app/presenter/navigation_bar_view.dart';

import 'core/services/hive_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NavigationBarView(),
      theme: ThemeData.dark(useMaterial3: true),
    );
  }
}
