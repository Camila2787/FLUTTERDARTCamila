import 'package:flutter/material.dart';
import 'package:taller_equipos2/screens/export.dart';
import 'package:taller_equipos2/screens/listarExportacion.dart';


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
        title: const Text('EXPORTACIONS'), backgroundColor: Colors.grey),
        body: ListView(
          children:  [
            const ListTile(title: Text('Home'),
            subtitle: Text('EXPORTACIONS'),
            leading: Icon(Icons.home, color: Colors.blueGrey,),
            trailing: Icon(Icons.navigate_next_outlined),
            ),
            ListTile(title: const Text('Register'),
            leading: const Icon(Icons.login, color: Colors.brown),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap: (){
              final route = MaterialPageRoute(builder:(context) => const Export());
              Navigator.push(context,route);
            },
            ),
               ListTile(title: const Text('List of exportacions'),
            leading: const Icon(Icons.list, color: Colors.brown),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap: (){
              final route = MaterialPageRoute(builder:(context) => const ListarExportacionesScreen());
              Navigator.push(context,route);
            },
            ),
         

          ],
        )
    );
  }
}