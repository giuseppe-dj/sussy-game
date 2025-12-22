import 'package:flutter/material.dart';
import 'package:sussy/screens/home_screen.dart';
import 'package:sussy/screens/lists_view.dart';
import 'package:sussy/theme/app_colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,  //Etiqueta
      theme: ThemeData( //Datos del frame style
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.accent,
          brightness: Brightness.dark
        ).copyWith(
          surface: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.black,
        canvasColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0
        )
      ),
      home: Scaffold( //Body main
        body: HomeScreen()
      ),
    );
  }
}
