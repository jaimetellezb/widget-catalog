import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Assets'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    const formatInvalid = 'error';
    const url =
        'https://www.crunchyroll.com/imgsrv/display/thumbnail/1200x675/catalog/crunchyroll/a249096c7812deb8c3c2c907173f3774.jpe';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/dashatars.png',
              height: 200,
              width: 300,
            ),
            const Icon(
              Icons.warning,
              color: Colors.yellow,
              size: 40.0,
              shadows: [Shadow(blurRadius: 20, offset: Offset(10, 10))],
            ),
            const Icon(
              Icons.info,
              color: Colors.blue,
              size: 35.0,
            ),
            const Icon(
              Icons.cancel,
              color: Colors.red,
              size: 35.0,
            ),
          ],
        ),
      ),
    );
  }
}
