import 'package:flutter/material.dart';
import 'package:development_as/screens/compras_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DevelopmentAS'), backgroundColor: Colors.blueGrey),
        body: ListView(
          children:  [
            const ListTile(title: Text('Home'),
            subtitle: Text('DEVELOPMENTAS'),
            leading: Icon(Icons.home, color: Colors.blueGrey,),
            ),
                ListTile(title: const  Text('Compras'),
            subtitle: const Text('Ingresar compras realizadas al proveedor'),
            leading: const Icon(Icons.shopping_basket, color: Colors.blueGrey),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap: (){
              final route = MaterialPageRoute(builder:(context) => const ComprasScreen());
              Navigator.push(context,route);
            },
            ),

          ],
        )
    );
  }
}