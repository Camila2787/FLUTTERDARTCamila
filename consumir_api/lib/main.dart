import 'package:consumir_api/screens/listar_departamentos.dart';
import 'package:consumir_api/screens/registrar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


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
      home: Registrar(),
    );
  }
}

//Mostrar el mensaje de insersión en un la el