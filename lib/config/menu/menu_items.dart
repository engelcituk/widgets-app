
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
    title: 'Progress indicators', 
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),
  MenuItem(
    title: 'Snackbars y Dialogs', 
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline
  ),
  MenuItem(
    title: 'Animated container', 
    subTitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.animation
  ),
  MenuItem(
    title: 'UI Controls + Tiles', 
    subTitle: 'Una serie de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined
  ),
  MenuItem(
    title: 'Introducción a la aplicación', 
    subTitle: 'Pequeño tutorial de la aplicación',
    link: '/app-tutorial',
    icon: Icons.accessible_rounded
  ),
  // MenuItem(
  //   title: 'Infinite Scroll', 
  //   subTitle: 'Vista scroll infinito',
  //   link: '/infinite-scroll',
  //   icon: Icons.screenshot_outlined
  // ),
 
  // MenuItem(
  //   title: 'Progress', 
  //   subTitle: 'Vista progress',
  //   link: '/progress',
  //   icon: Icons.bar_chart
  // ),
];