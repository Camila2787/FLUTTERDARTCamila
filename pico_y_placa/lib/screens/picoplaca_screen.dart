import 'package:flutter/material.dart';

class PicoyPlacaScreen extends StatefulWidget {
  const PicoyPlacaScreen({super.key});

  @override
  State<PicoyPlacaScreen> createState() => _PicoyPlacaScreenState();
}

class _PicoyPlacaScreenState extends State<PicoyPlacaScreen> {
  TextEditingController picoYPlacaController = TextEditingController();
 void consultarPicoYPlaca() {
    int? ultimoDigitoPlaca;
    for (int i = 0; i < picoYPlacaController.text.length; i++) {
      ultimoDigitoPlaca = int.parse(picoYPlacaController.text[i]);
    }
    String dia = '';
    if (ultimoDigitoPlaca == 0 || ultimoDigitoPlaca == 1) {
      dia = 'Lunes';
    } else if (ultimoDigitoPlaca == 2 || ultimoDigitoPlaca == 3) {
      dia = 'Martes';
    } else if (ultimoDigitoPlaca == 4 || ultimoDigitoPlaca == 5) {
      dia = 'Miércoles';
    } else if (ultimoDigitoPlaca == 6 || ultimoDigitoPlaca == 7) {
      dia = 'Jueves';
    } else if (ultimoDigitoPlaca == 8 || ultimoDigitoPlaca == 9) {
      dia = 'Viernes';
    }
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Día de pico y placa'),
            content: Text('El día de pico y placa es: $dia'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Aceptar'),
              )
            ],
          );
        });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('pico y placa'),
        backgroundColor: Colors.indigo,
      ),
      body:  Column(
        children: [
        const Text('Ingrese el ultimo digito de la placa'),
        TextField(
          controller: picoYPlacaController,
          keyboardType: TextInputType.number,
          maxLength: 3,
        ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: (){
           consultarPicoYPlaca();
          },
          child:const Text('Consultar'),
        )
      ]),

    );
  }
}