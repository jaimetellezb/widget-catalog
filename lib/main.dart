import 'package:flutter/material.dart';

void main() {
  runApp(const AnimatedMyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Opacity',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Opacity(
                opacity: 0.9,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                  child: const Image(
                    image: NetworkImage(
                        'https://miro.medium.com/v2/resize:fit:1400/1*W1aGmyVwe5kKGuyTvzdUEg.png'),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.2,
                child: Image.network(
                  'https://ih1.redbubble.net/image.3266012404.3827/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
                  height: 150,
                  width: 150,
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                  child: Image.network('https://kili.aspix.it/Dash.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyAppState extends StatefulWidget {
  const MyAppState({super.key});

  @override
  State<MyAppState> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppState> {
  double opacityValue = 1.0;

  void _changeOpacity() {
    opacityValue -= 0.1;
    if (opacityValue < 0.0) {
      opacityValue = 1.0;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Opacity',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Theme.of(context)
                    .colorScheme
                    .inversePrimary
                    .withOpacity(opacityValue),
                child: Opacity(
                  opacity: opacityValue,
                  child: Image.network(
                    'https://kili.aspix.it/Dash.png',
                    height: 300,
                    width: 300,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _changeOpacity,
                child: const Text('Opacidad'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedMyApp extends StatefulWidget {
  const AnimatedMyApp({super.key});

  @override
  State<AnimatedMyApp> createState() => _AnimatedMyAppState();
}

class _AnimatedMyAppState extends State<AnimatedMyApp> {
  double opacityValue = 1.0;

  void _changeOpacity() {
    setState(() => opacityValue = opacityValue == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AnimatedOpacity',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedOpacity(
                duration: const Duration(seconds: 5),
                opacity: opacityValue,
                curve: Curves.fastOutSlowIn,
                child: Container(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.network('https://kili.aspix.it/Dash.png'),
                  ),
                ),
              ),
              Container(
                color: Theme.of(context)
                    .colorScheme
                    .inversePrimary
                    .withOpacity(opacityValue),
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.network(
                    'https://kili.aspix.it/Dash.png',
                    color: const Color.fromARGB(255, 62, 167, 202)
                        .withOpacity(opacityValue),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _changeOpacity,
                child: opacityValue == 1.0
                    ? const Text('Opacidad')
                    : const Text('Color original'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
