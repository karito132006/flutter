import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'El campo de tulipanes'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: [
          // Imagen principal (puede ser assets o red)
          Image.asset(
            "assets/images/flores.jpg",
            fit: BoxFit.cover,
            width: 350,
            height: 350,
          ),

          // Sección del título
          Container(
            padding: const EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text(
                          'Campo de Tulipanes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const Text(
                        'Países Bajos, Europa',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.favorite, color: Colors.pink),
                const Text('100'),
              ],
            ),
          ),

          // Sección de botones
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButtonColumn(Icons.call, 'CALL'),
              _buildButtonColumn(Icons.map, 'ROUTE'),
              _buildButtonColumn(Icons.share, 'SHARE'),
            ],
          ),

          // Sección de descripción
          const Padding(
            padding: EdgeInsets.all(32),
            child: Text(
              'Este hermoso campo de tulipanes refleja la belleza natural '
              'de los Países Bajos. Durante la primavera, millones de tulipanes '
              'florecen en distintos colores, atrayendo a turistas de todo el mundo. '
              'Los molinos de viento típicos acompañan el paisaje, creando una escena '
              'icónica de la cultura holandesa.',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

// Función para crear botones
Column _buildButtonColumn(IconData icon, String label) {
  Color color = Colors.deepPurple;
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
