import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {

  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl); //positional

}

final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Amet in esse do id pariatur ipsum consectetur.', 'assets/images/1.png'),
  SlideInfo('Entrega rápida', 'Consequat deserunt est elit ea ut duis exercitation cillum veniam irure sit mollit.', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Eiusmod dolore reprehenderit excepteur duis ex ex anim ea.', 'assets/images/3.png'),
];


class AppTutorialScreen extends StatelessWidget {

  static const String name = 'tutorial_screen'; 

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            children: slides.map(
              (slideData) => _Slide(
                title:slideData.title, 
                caption: slideData.caption, 
                imageUrl: slideData.imageUrl
              )
            ).toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text('Salir'),
              onPressed: () => context.pop(),
            )
          )
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title, 
    required this.caption,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final  captionStyle = Theme.of(context).textTheme.bodyLarge;


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imageUrl)),
          const SizedBox(height: 20,),
          Text(title, style: titleStyle,),
          const SizedBox(height: 20,),
          Text(caption, style: captionStyle,),
        ],
      ),
    );
  }
}