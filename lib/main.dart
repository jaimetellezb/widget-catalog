import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final list = List.generate(30, (index) => index);

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
      home: const Center(child: ListViewBuilderWidget()),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        key: GlobalKey(),
        scrollDirection: Axis.vertical, // por defecto es vertical
        padding: const EdgeInsets.all(8.0),
        children: [
          // agregamos este espacio para que los widget empiecen abajo
          // del área de configuraciones del dispositivo
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 80,
            color: Colors.green[500],
            child: const Center(child: Text('Widget A')),
          ),
          Container(
            height: 70,
            color: Colors.green[400],
            child: const Center(child: Text('Widget B')),
          ),
          Container(
            height: 60,
            color: Colors.green[300],
            child: const Center(child: Text('Widget C')),
          ),
          Container(
            height: 50,
            color: Colors.green[200],
            child: const Center(child: Text('Widget D')),
          ),
        ],
      ),
    );
  }
}

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue[300],
                border: Border.all(width: 0.5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text('Widget ${index + 1} '));
        },
      ),
    );
  }
}

class ListViewCustomWidget extends StatelessWidget {
  const ListViewCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            color: Colors.grey,
            child: const Text('Widget'),
          );
        },
      )),
    );
  }
}

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              color: Colors.yellow,
              child: Text('Widget $index'),
            );
          },
          separatorBuilder: (context, index) => const Divider(
                color: Colors.purple,
              ),
          itemCount: list.length),
    );
  }
}
