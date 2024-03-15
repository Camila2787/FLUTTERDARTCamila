// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:development_as/screens/menu_screen.dart';
import 'package:development_as/screens/compras_screen.dart';
import 'package:development_as/screens/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});


  @override
  State<MainApp> createState() => _MainAppState();

}

class  _MainAppState extends State<MainApp>{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: Text('Mi App')
     home: LoginScreen()
    );
  }
}