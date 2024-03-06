import 'package:flutter/material.dart';
import 'package:list_menu/screens/login_screen.dart';
import 'package:list_menu/screens/mision_screen.dart';
import 'package:list_menu/screens/productos.screen.dart';
import 'package:list_menu/screens/rectangulo_screen.dart';

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
        title: const Text('Mi App'), backgroundColor: Colors.grey),
        body: ListView(
          children:  [
            const ListTile(title: Text('Home'),
            subtitle: Text('Inicio de la aplicación'),
            leading: Icon(Icons.home, color: Colors.blueGrey,),
            trailing: Icon(Icons.navigate_next_outlined),
            ),
            ListTile(title: const Text('Productos'),
            subtitle: const Text('Nuestros productos'),
            leading: const Icon(Icons.shop, color: Colors.brown),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap: (){
              final route = MaterialPageRoute(builder:(context) => const ProductosScreen());
              Navigator.push(context,route);
            },
            ),
             const ListTile(title: Text('Contacto'),
            subtitle: Text('Donde estamos?'),
            leading: Icon(Icons.people, color: Colors.deepPurple),
            trailing: Icon(Icons.navigate_next_outlined),
            ),
             ListTile(title: const  Text('Misión'),
            subtitle: const Text('¿Quienes somos?'),
            leading: const Icon(Icons.location_on, color: Colors.grey),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap: (){
              final route = MaterialPageRoute(builder:(context) => const MisionScreen());
              Navigator.push(context,route);
            },
            ),
               ListTile(title: const  Text('Rectangulo'),
            subtitle: const Text('Área y perimetro del rectangulo'),
            leading: const Icon(Icons.rectangle, color: Colors.grey),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap: (){
              final route = MaterialPageRoute(builder:(context) => const RectanguloScreen());
              Navigator.push(context,route);
            },
            ),
                ListTile(title: const  Text('Login'),
            subtitle: const Text('Acceso a la aplicación'),
            leading: const Icon(Icons.rectangle, color: Colors.grey),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap: (){
              final route = MaterialPageRoute(builder:(context) => const LoginScreen());
              Navigator.push(context,route);
            },
            ),

          ],
        )
    );
  }
}