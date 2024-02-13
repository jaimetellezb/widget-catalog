import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final list = List.generate(10, (index) => index);

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
      home: const Center(child: ListViewWidget()),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          key: GlobalKey(), // identificador del widget
          scrollDirection: Axis.vertical, //
          reverse: true,
          // controller: , // se puede utilizar para controlar la posición de desplazamiento del ListView.

          shrinkWrap: true,

          padding: const EdgeInsets.all(8.0),
          // itemExtent: 100, // sobreescribe las dimensiones de los widgets hijos
          // itemExtentBuilder: (index, dimensions) => 70, // sobreescribe las dimensiones de los widgets hijos
          // prototypeItem: ,
          // clipBehavior: ,

          children: [
            Container(
              // height: 50,
              color: Colors.amber,
              child: const Center(child: Text('A')),
            ),
            Container(
              height: 50,
              color: Colors.orange,
              child: const Text('A'),
            ),
            Container(
              height: 50,
              color: Colors.amber,
              child: const Text('A'),
            ),
            Container(
              height: 50,
              color: Colors.orange,
              child: const Text('A'),
            ),
          ],
        ),
      ),
    );
  }
}

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}

class ListViewCustomWidget extends StatelessWidget {
  const ListViewCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}
