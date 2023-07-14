import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  // esto para que en el router pueda hacer esto  name: ButtonsScreen.name, y no estar haciendo instancias de ButtonsScreen
  static const String name = 'buttons_screen'; 

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const Placeholder(),
    );
  }
}