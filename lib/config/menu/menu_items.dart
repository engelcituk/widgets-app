
import 'package:flutter/material.dart';

class MenuItem {
  
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });

}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones', 
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),
  MenuItem(
    title: 'Tarjetas', 
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card
  ),
   MenuItem(
    title: 'Animacciones', 
    subTitle: 'Animaciones cool',
    link: '/animated',
    icon: Icons.animation
  ),
  MenuItem(
    title: 'Tutorial', 
    subTitle: 'Vista tutorial',
    link: '/tutorial',
    icon: Icons.info_outline_rounded
  ),
  MenuItem(
    title: 'Infinite Scroll', 
    subTitle: 'Vista scroll infinito',
    link: '/infinite-scroll',
    icon: Icons.screenshot_outlined
  ),
  MenuItem(
    title: 'Progress', 
    subTitle: 'Vista progress',
    link: '/progress',
    icon: Icons.local_activity
  ),
  MenuItem(
    title: 'Snackbar', 
    subTitle: 'Vista Snackbar',
    link: '/snackbar',
    icon: Icons.science_sharp
  ),
  MenuItem(
    title: 'Progress', 
    subTitle: 'Vista progress',
    link: '/progress',
    icon: Icons.bar_chart
  ),
];