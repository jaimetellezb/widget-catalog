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
      home: const MyHomePage(title: 'Flutter ClipOval'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ClipOval(
                  clipBehavior: Clip.hardEdge,
                  clipper: ClipperWidget2(),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: ClipOval(
                  clipBehavior: Clip.hardEdge,
                  clipper: ClipperWidget(),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: ClipOval(
                  clipBehavior: Clip.hardEdge,
                  clipper: ClipperWidget(),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.purple,
                  ),
                ),
              ),
              Expanded(
                child: ClipOval(
                  clipBehavior: Clip.hardEdge,
                  clipper: ClipperWidget2(),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.network(
                  'https://images.pexels.com/photos/36717/amazing-animal-beautiful-beautifull.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  height: 200,
                  width: 200,
                  alignment: Alignment.topCenter,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ClipperWidget extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 50, 100, 150);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}

class ClipperWidget2 extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 50, 100, 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
