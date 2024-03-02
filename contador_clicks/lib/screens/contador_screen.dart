import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget{
  const ContadorScreen({super.key});

  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  @override
  Widget build(BuildContext context){
    int contadorClicks = 0;
    //tarea.DescontarClicks
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Contador Clicks: $contadorClicks')
      ),
      body: const Center(child: Text('Numero de clicks', style:TextStyle(fontSize: 25, color:Colors.deepPurple))),
      floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: (){
        contadorClicks++;
        print(contadorClicks);
        setState((){});
      },),
    );
}
}