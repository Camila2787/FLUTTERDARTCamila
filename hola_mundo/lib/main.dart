import 'package:flutter/material.dart';
import 'package:hola_mundo/home_screen.dart';

void main(){
  runApp(const HelloWorld());
}
class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //Ocultar banner dubug
     // home: Center(child: Text('Hola mundo', style: TextStyle(color: Colors.purple, fontSize: 25)))
     home: HomeScreen()
    );
  }
}