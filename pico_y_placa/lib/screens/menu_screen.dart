import 'package:flutter/material.dart';
import 'package:pico_y_placa/screens/infracciones_screen.dart';
import 'package:pico_y_placa/screens/picoplaca_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
      return  Scaffold(
     appBar: AppBar(
      title: const Text('Menu', style: TextStyle(color:Color.fromARGB(255, 15, 14, 15),fontSize: 30),),
      backgroundColor:const Color.fromARGB(255, 32, 203, 43),
     ), 
     body: ListView(
      children:  [
          ListTile(title: const Text('pico y placa'),
          leading: const Icon(Icons.car_crash,color: Color.fromARGB(255, 72, 33, 243),),
          onTap:(){//abrir otra screen
          final route=MaterialPageRoute(builder:(context)=>const PicoyPlacaScreen() );
          Navigator.push(context,route);
        },
        
        ),
        
           ListTile(title:const Text('Infracciones'),
            leading: const Icon(Icons.car_crash,color: Colors.blue,),
        onTap:(){//abrir otra screen
          final route=MaterialPageRoute(builder:(context)=>const InfraccionesScreen() );
          Navigator.push(context,route);
        },
         ),
      ]
     ),
    );
  }
}