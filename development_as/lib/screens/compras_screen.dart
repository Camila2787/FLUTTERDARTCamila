import 'package:flutter/material.dart';

class ComprasScreen extends StatefulWidget {
  const ComprasScreen({super.key});

  @override
  State<ComprasScreen> createState() => _ComprasScreenState();
}

class _ComprasScreenState extends State<ComprasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compras'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.shopping_bag,
              color: Colors.blueGrey),
              hintText: "Nombre del insumo:",
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              labelText: "Nombre del insumo",
              labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20, fontFamily: AutofillHints.nickname)

            ),
          ),

          const SizedBox(height: 15,),
               TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.date_range,
                color: Colors.blueGrey ),
                suffixIcon: Icon(Icons.date_range_outlined),
                hintText: "fecha compra",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                labelText: "fecha compra",
                labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20, fontFamily: AutofillHints.username )
               
              ),
            ),
            const SizedBox(height: 20,),
              TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.monetization_on,
                color: Colors.blueGrey ),
                suffixIcon: Icon(Icons.date_range_outlined),
                hintText: "Monto",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                labelText: "Monto",
                labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20, fontFamily: AutofillHints.username )
               
              ),
            ),
             const SizedBox(height: 20,),
              TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.numbers,
                color: Colors.blueGrey ),
                suffixIcon: Icon(Icons.numbers),
                hintText: "número de compra:",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                labelText: "número de compra",
                labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20, fontFamily: AutofillHints.username )
               
              ),
            ),
             const SizedBox(height: 20,),
              TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.percent,
                color: Colors.blueGrey ),
                suffixIcon: Icon(Icons.percent_outlined),
                hintText: "IVA",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                labelText: "IVA",
                labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20, fontFamily: AutofillHints.username )
               
              ),
            ),
             const SizedBox(height: 20,),
              TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.point_of_sale,
                color: Colors.blueGrey ),
                suffixIcon: Icon(Icons.point_of_sale_outlined),
                hintText: "Total:",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                labelText: "Total",
                labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 20, fontFamily: AutofillHints.username )
               
              ),
            ),
            

        ]),)
    );
  }
}