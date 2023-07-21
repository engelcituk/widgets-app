import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {

  static const String name = 'ui_controls_screen'; 

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body:const _UIControlsView(),
    );
  }
}

enum Transportation {
  car, plane, boat, submarine
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

class _UIControlsViewState extends State<_UIControlsView> {

  bool isDeveloperMode = true;

  Transportation selectedTransportation = Transportation.car;

  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;


  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloperMode,
          onChanged: (value) => setState(() {
            isDeveloperMode = !isDeveloperMode;
          })
        ),

        ExpansionTile(
          title: const Text('Transporte Seleccionado'),
          subtitle: Text(selectedTransportation.name),
          initiallyExpanded: false,
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar por Carro'),
              value: Transportation.car, 
              groupValue: selectedTransportation, 
              onChanged:(value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Viajar por Barco'),
              value: Transportation.boat, 
              groupValue: selectedTransportation, 
              onChanged:(value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation.plane, 
              groupValue: selectedTransportation, 
              onChanged:(value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By submarine'),
              subtitle: const Text('viajar por submarino'),
              value: Transportation.submarine, 
              groupValue: selectedTransportation, 
              onChanged:(value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            )
          ],
        ),

        CheckboxListTile(
          title: const Text('Desayuno'),
          subtitle: const Text('¿Quiere desayuno?'),
          value: wantsBreakfast, 
          onChanged:(value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Almuerzo'),
          subtitle: const Text('¿Quiere almuerzo?'),
          value: wantsLunch, 
          onChanged:(value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Cena'),
          subtitle: const Text('¿Quiere Cena?'),
          value: wantsDinner, 
          onChanged:(value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        )
      ],

    );
  }
}