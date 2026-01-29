import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_speed_ui_app/view/home_ui.dart';

void main() {
  runApp(const FlutterSpeedUiApp());
}

class FlutterSpeedUiApp extends StatelessWidget {
  const FlutterSpeedUiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Speed UI',
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const HomeUi(),
    );
  }
}
