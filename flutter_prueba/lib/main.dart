import 'package:flutter/material.dart';
import 'package:flutter_prueba/contenedor.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi Unicornio'),
          backgroundColor: Colors.tealAccent,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image.asset('assets/images/unicornio.png', width: 550, height: 350),
            Icon(Icons.home, size: 80, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
