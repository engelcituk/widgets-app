import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop(); // para salir de la ruta
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Texto elevated')),
            const ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon( Icons.favorite, color: Colors.red), 
              label: const Text('Elevated Icon')
            ),
            FilledButton(onPressed: (){}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: (){}, 
              icon: const Icon( Icons.favorite),
              label: const Text('Filled icon')
            ),
            OutlinedButton(
              onPressed: (){},
              child: const Text('Outlined')
            ),
            OutlinedButton.icon(
              onPressed: (){}, 
              icon: const Icon( Icons.favorite, color: Colors.red),
              label: const Text('OutlinedButton icon')
            ),
            TextButton(onPressed: (){}, child: const Text('Text button') ),
            TextButton.icon(
              onPressed: (){},
              icon: const Icon( Icons.favorite, color: Colors.red),
              label: const Text('Text button Icon')
            ),
            const CustomButton(),
            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_rounded)),
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll( colors.primary ),
                iconColor: const MaterialStatePropertyAll( Colors.white )
              ),
            )

          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {
            
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo', style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}