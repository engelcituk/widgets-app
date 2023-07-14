import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  // esto para que en el router pueda hacer esto  name: CardsScreen.name, y no estar haciendo instancias de CardsScreen
  static const String name = 'cards_screen'; 

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const Placeholder(),
    );
  }
}