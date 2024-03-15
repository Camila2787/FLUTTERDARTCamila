import 'package:flutter/material.dart';
import 'package:list_menu/screens/menu_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formLogin = GlobalKey<FormState>();
  String nombreUsuario = "";
  String password = "";

  void acceder(String nombreUsuario, String password){
    print(nombreUsuario);
    print(password);
    if(nombreUsuario == "sena" && password == "123456"){
        final route = MaterialPageRoute(builder:(context) => const MenuScreen());
              Navigator.push(context,route);
    }
    else{
     // Mostrar un AlertDialog con un botón "OK"
    showAlertDialog(context);
      }
       //Implementar el Dialog Alert
    }
    void showAlertDialog(BuildContext context) {
  // Configura el botón "OK"
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pop(); // Cierra el diálogo
    },
  );

  // Crea el AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Ingreso fallido"),
    content: const Text("Usuario o contraseña incorrectos."),
    actions: [okButton], // Agrega el botón "OK"
  );

  // Muestra el diálogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
    
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Form(
          key: formLogin,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person,
                color: Colors.lightGreenAccent ),
                hintText: "Nombre de usuario",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                labelText: "Digitar Usuarios",
                labelStyle: TextStyle(color: Colors.red, fontSize: 20, fontFamily: AutofillHints.username )
               
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Por favor ingrese su usuario';
                }
                return null;
              },

                 onSaved: (value){
                nombreUsuario= value!;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password_outlined,
                color: Colors.deepPurple ),
                suffixIcon: Icon(Icons.password_rounded),
                hintText: "Contraseña",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                labelText: "Contraseña",
                labelStyle: TextStyle(color: Colors.red, fontSize: 20, fontFamily: AutofillHints.username )
               
              ),
                validator: (value){
                if(value == null || value.isEmpty){
                  return 'Por favor ingrese contraseña';
                }
                return null;
              },
                 onSaved: (value){
                password = value!;
              }
           
            ),
            const SizedBox(height: 20,),
           ElevatedButton.icon(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
            onPressed: (){
              if (formLogin.currentState!.validate()){
                formLogin.currentState!.save();
              acceder(nombreUsuario, password);
              }
            },
            icon: const Icon(Icons.login), label: const Text("Acceder"))
          ],
        )
      ),
      )
    );
    
  }
}