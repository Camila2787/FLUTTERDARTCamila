
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trabajo_equipose/screens/exportacion.dart';
import 'package:trabajo_equipose/screens/listarExportacion.dart';


void main(){
  runApp(const Main());
}
class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _Main();
}

class _Main extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: ListarDepartamentosScreen(),
      home: ListarExportacionesScreen(),
    );
  }
}

//Mostrar el mensaje de insersión en un la el