import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFFb794f6),
          onPrimary: Color.fromARGB(255, 162, 134, 176),
          secondary: Color(0xFFc6f68d),
          onSecondary: Color.fromARGB(255, 77, 40, 145),
          error: Color(0xFFb794f6),
          onError: Color(0xFFb794f6),
          background: Color.fromARGB(255, 242, 241, 244),
          onBackground: Color(0xFFb794f6),
          surface: Color(0xFFb794f6),
          onSurface: Color.fromARGB(255, 73, 71, 75),
        ),
        // https://m3.material.io/styles/typography/type-scale-tokens
        textTheme: TextTheme(
            displayLarge: const TextStyle(),
            displayMedium:
                const TextStyle(color: Color.fromARGB(255, 77, 40, 145)),
            displaySmall: const TextStyle(),
            headlineLarge: const TextStyle(),
            headlineMedium: const TextStyle(),
            headlineSmall: const TextStyle(),
            titleLarge: const TextStyle(),
            titleMedium: const TextStyle(),
            titleSmall: const TextStyle(),
            labelLarge: const TextStyle(),
            labelMedium: const TextStyle(),
            labelSmall: const TextStyle(),
            bodyLarge: TextStyle(color: Theme.of(context).primaryColor),
            bodyMedium: TextStyle(color: Theme.of(context).primaryColor),
            bodySmall: const TextStyle()),
      ),
      home: const MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: textTheme.titleLarge,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: textTheme.bodyMedium,
            ),
            Text(
              '$_counter',
              style: textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
