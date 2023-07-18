import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {

  static const String name = 'snackbar_screen'; 

  const SnackBarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackabar y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Qui pariatur amet nulla ullamco fugiat excepteur consectetur in. Esse sit consequat qui ullamco dolor. Aliquip labore ipsum officia incididunt eu nulla nulla do occaecat pariatur reprehenderit exercitation.')
                  ]
                );
              },
              child: Text('Licencias usadas')
            ),
            FilledButton.tonal(
              onPressed: () => opendialog(context),
              child: const Text('Mostrar Dialogo')
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const  Text('Monstrar Snackbar'),
        icon: const Icon( Icons.remove_red_eye_outlined),
        onPressed:() => showCustonSnackbar(context),
      ),
    );
  }

  void opendialog(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estás seguro'),
        content: const Text('Adipisicing id irure consequat esse. Culpa officia voluptate ullamco ex quis incididunt ullamco ipsum magna duis. Ipsum aute cillum deserunt laboris ut dolore labore esse.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar') 
          ),
          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar'))

        ],
      ),);
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