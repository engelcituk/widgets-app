import 'package:flutter/material.dart';

const cards = <Map <String, dynamic> > [
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},

];

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
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            ( card) => _CardType1(label: card['label'], elevation: card['elevation'],)
          ),
          
          ...cards.map(
            ( card) => _CardType2(label: card['label'], elevation: card['elevation'],)
          ),

          ...cards.map(
            ( card) => _CardType3(label: card['label'], elevation: card['elevation'],)
          ),

           ...cards.map(
            ( card) => _CardType4(label: card['label'], elevation: card['elevation'],)
          ),

          const SizedBox(height: 50,)
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child:  Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: (){},
              )
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            )
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all( Radius.circular(12)),
        side: BorderSide(
          color: colors.outline
        )
      ),
      elevation: elevation,
      child:  Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: (){},
              )
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outlined'),
            )
          ],
        ),
      ),
    );
  }
}



class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType3({
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.surface,
      elevation: elevation,
      child:  Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: (){},
              )
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - filled'),
            )
          ],
        ),
      ),
    );
  }
}


class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType4({
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {

    // final colors = Theme.of(context).colorScheme;

    return Card(
      clipBehavior: Clip.hardEdge, //mantiene los bordes redondeados, la imagen no sale del card
      elevation: elevation,
      child:  Stack(
        children: [
          // 'https://picsum.photos/id/${elevation.toInt()}/200/300'
          Image.network(
            'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
            height: 350,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
              ),
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: (){},
              ),
            )
          ),
         
        ],
      ),
    );
  }
}

