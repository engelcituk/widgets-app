import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {

  static const String name = 'snackbar_screen'; 

  const SnackBarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackabar y Diálogos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const  Text('Monstrar Snackbar'),
        icon: const Icon( Icons.remove_red_eye_outlined),
        onPressed:() => showCustonSnackbar(context),
      ),
    );
  }

  void showCustonSnackbar(BuildContext context){  

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: (){}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar( snackbar );
  }
  
}