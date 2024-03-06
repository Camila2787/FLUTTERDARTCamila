import 'package:flutter/material.dart';

class RectanguloScreen extends StatefulWidget {
  const RectanguloScreen({super.key});

  @override
  State<RectanguloScreen> createState() => _RectanguloScreenState();
}

class _RectanguloScreenState extends State<RectanguloScreen> {
  //Definir controladores y variablees para capturar valores de las cajas de texto
  TextEditingController largoController = TextEditingController();
  TextEditingController anchoController = TextEditingController();
  String resultado = '', perimetro = '';


  void calcularArea(){
    try {
      double largo = double.parse(largoController.text);
      double ancho = double.parse(anchoController.text);
      double area = largo * ancho;
        setState((){
        resultado = 'El area es:  $area';
      });
    
      
    } catch (e) {
        setState((){
        resultado = 'No se puede calcular. Verifique';
      });
     
    }
 
  }

  void calcularPerimetro(){
   try {
      double largo = double.parse(largoController.text);
      double ancho = double.parse(anchoController.text);
      double perimetro = 2*largo * 2*ancho;
        setState((){
        resultado = 'El area es:  $perimetro';
      });
    
      
    } catch (e) {
        setState((){
        resultado = 'No se puede calcular. Verifique';
      });
     
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rectangulo'),
      ),
      body: Container(
        width: 200,
        height: 300,
        color: Colors.lightBlueAccent,
        child: Column(
          children: [
            TextField(
              controller: largoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Largo',  labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              maxLength: 3),
              ElevatedButton(onPressed: calcularPerimetro, child: const Text('Calcular Perimetro')),
              TextField(
              controller: anchoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Ancho')),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: calcularArea, child: const Text('Calcular Área')),
              const SizedBox(height: 15),
              Text('Area: $resultado'),
              ElevatedButton(onPressed: calcularPerimetro, child: const Text('Calcular Perimetro')),
              Text('Perimetro: $perimetro')

          ]
        )
      )
    );
  }
}