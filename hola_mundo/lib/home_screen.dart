import 'package:flutter/material.dart';
//Es una pantalla que se llamara desde el main, es como la bienvenida.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: const Text('Home'),
      backgroundColor: Colors.blue,
    ),
    body: const Text('Clase 1 de flutter............'),
    );
  }
}