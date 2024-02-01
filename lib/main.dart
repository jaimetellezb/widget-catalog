import 'package:flutter/material.dart';
import 'package:flutter_widget_catalog/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      // definimos la ruta inicial de la aplicación
      initialRoute: '/home',
      // configuramos todas las rutas que vamos a tener en la aplicación
      // llevan un nombre el contexto y el widget de cada vista.
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const HomeScreen(),
        '/settings': (BuildContext context) => const SettingScreen(),
      },
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const HomeScreen(),
    );
  }
}
