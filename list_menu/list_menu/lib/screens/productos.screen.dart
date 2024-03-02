import 'package:flutter/material.dart';

class ProductosScreen extends StatefulWidget {
  const ProductosScreen({super.key});

  @override
  State<ProductosScreen> createState() => _ProductosScreenState();
}

class _ProductosScreenState extends State<ProductosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos')
      ),

      
      body: const Column(
        children: [
          Row(
            children: [
            Icon(Icons.apple),
            Expanded(child:Padding(
              padding: EdgeInsets.all(30.0),
              child: Text('La manzana es un citrico segun wilmarla manzana está rica y fue la razón metafórica por la cualNewton descubrió la gravedad, golpeando gravemente su cabezacreyendo que iba a comprender a totalidad la física ',
              textAlign: TextAlign.justify),
            )),
            
            ],
          ),

           Row(
            textDirection: TextDirection.rtl,
            children: [
            Icon(Icons.food_bank, size: 100, color: Colors.lime),
            Expanded(child:Padding(
              padding: EdgeInsets.all(30.0),
              child: Text('La manzana es un citrico segun wilmarla manzana está rica y fue la razón metafórica por la cualNewton descubrió la gravedad, golpeando gravemente su cabezacreyendo que iba a comprender a totalidad la física ',
              textAlign: TextAlign.justify),
            )),
            
            ],
          ),
        ],
      ),
    );
  }
}