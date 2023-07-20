import 'package:flutter/material.dart';

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
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map(
          (slideData) => _Slide(
            title:slideData.title, 
            caption: slideData.caption, 
            imageUrl: slideData.imageUrl
          )
        ).toList(),
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
    return Placeholder();
  }
}