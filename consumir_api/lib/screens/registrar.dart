import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class Http{
  static String url = "https://apinodemongo-iox5.onrender.com/api/usuarios";
  static postUsuario(Map usuario) async{
    try {
      final res = await http.post(Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode(usuario),
     
      );
      if(res.statusCode == 200){//Si la respuesta es 200 la inserción es exitosa
        var data = jsonDecode(res.body.toString());
        print(data);
      }
      else{
        print('Fallo la insersión');
      }
    } catch(e){
     print(e.toString());
    }
  }
}

class Registrar extends StatefulWidget {
  const Registrar({super.key});

  @override
  State<Registrar> createState() => _RegistrarState();
}

TextEditingController nombreUsuario = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController rol = TextEditingController();

class _RegistrarState extends State<Registrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextField(
              controller: nombreUsuario,
              decoration: const InputDecoration(hintText: "Nombre Usuario"),
        
            ),
            const SizedBox(height: 20,),
            TextField(              
              controller: email,
              decoration: const InputDecoration(hintText: "Gmail"),
              ),
            const SizedBox(height: 20,),
            TextField(              
              controller: password,
              decoration: const InputDecoration(hintText: "Password"),
              ),
            const SizedBox(height: 20,),
            TextField(              
              controller: rol,
              decoration: const InputDecoration(hintText: "Rol"),
              ),
              const SizedBox(height: 20,),
             ElevatedButton.icon(onPressed:(){
            var usuario ={
              "nombre":nombreUsuario.text,
              "password" : password.text,
              "email":email.text,
              "rol":rol.text

            };
          
            print(usuario);
            Http.postUsuario(usuario);
          },
          icon: const Icon(Icons.new_label),
          label: const Text("Registrar")

             )

          ]),
        ),
      );
  }
}