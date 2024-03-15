import 'package:flutter/material.dart';
import 'package:development_as/screens/menu_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController contrasenaController = TextEditingController();
  String nombreUsuario = "";
  String contrasena = "";
  //Creamos un array de usuarios y contraseña
  var usuarios = <String, String>{};
   void registrarse() {
    // Validamos que los campos no estén vacíos
    if (usuarioController.text.isEmpty || contrasenaController.text.isEmpty) {
      // Mostramos una alerta indicando que se deben ingresar datos
      showAlertDialog(context, 'Debe ingresar los datos para poder registrarse');
    } else {
      // Añadimos el usuario al mapa
      usuarios[usuarioController.text] = contrasenaController.text;
      // Mostramos una alerta de registro exitoso
      showAlertDialog(context, 'El usuario ${usuarioController.text} ha sido registrado');
    }
  }

  void iniciarSesion() {
    // Validamos si el usuario y contraseña existen
    if (usuarios.containsKey(usuarioController.text)) {
      if (usuarios[usuarioController.text] == contrasenaController.text) {
        // Mostramos una alerta indicando que el usuario ha iniciado sesión
        showAlertDialog(context, 'Inicio de Sesión Exitoso');
        // Navegamos a la pantalla de menú
        final route = MaterialPageRoute(builder: (context) => const MenuScreen());
        Navigator.push(context, route);
      } else {
        // Mostramos una alerta indicando que la contraseña es incorrecta
        showAlertDialog(context, 'Contraseña incorrecta');
      }
    } else {
      // Mostramos una alerta indicando que el usuario no existe
      showAlertDialog(context, 'Usuario no encontrado');
    }
  }

  // Función para mostrar un AlertDialog con un mensaje personalizado
  void showAlertDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alerta'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          titleTextStyle: const TextStyle(color: Colors.white),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
          child: Column(
            //Ponemos la imagen de la aplicacion

            children: [
              const Image(
                image: AssetImage('../assets/images/logo.jpg'),
                width: 200,
                height: 200,
              ),
              TextFormField(
                controller: usuarioController,
                decoration: const InputDecoration(
                    labelText: 'Digitar Usuario',
                    hintText: 'Nombre de usuario',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: contrasenaController,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Digitar Contraseña',
                    hintText: 'Contraseña',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    prefixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.blue,
                    ),
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              const SizedBox(
                height: 20,
              ),
              //Creamos los botones de iniciar sesion y registrarse
              ElevatedButton(
                onPressed: () {
                  iniciarSesion();
                },
                child: const Text('Iniciar Sesion'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  registrarse();
                },
                child: const Text('Registrarse'),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ), 
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ],
        ));
  }
}