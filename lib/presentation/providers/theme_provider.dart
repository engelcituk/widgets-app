import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


//listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

final isDarkModeProvider = StateProvider<bool>((ref) => true);

// un simple int
final selectedColorProvider = StateProvider((ref) => 0);

// un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//controller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {

  //STATE = Estado = new AppTheme()
  ThemeNotifier(): super( AppTheme() );

  void toggleDarkMode (){

  }

  void changeColorIndex(){
    
  }
  
}
