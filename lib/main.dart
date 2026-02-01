import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_speed_ui_app/view/home_ui.dart';

import 'package:flutter_speed_ui_app/view/a01_page_ui.dart';
import 'package:flutter_speed_ui_app/view/a02_page_ui.dart';

import 'package:flutter_speed_ui_app/view/b01_page_ui.dart';
import 'package:flutter_speed_ui_app/view/b02_page_ui.dart';
import 'package:flutter_speed_ui_app/view/b03_page_ui.dart';

import 'package:flutter_speed_ui_app/view/c01_page_ui.dart';
import 'package:flutter_speed_ui_app/view/c02_page_ui.dart';
import 'package:flutter_speed_ui_app/view/c03_page_ui.dart';

import 'package:flutter_speed_ui_app/view/d01_page_ui.dart';
import 'package:flutter_speed_ui_app/view/d02_page_ui.dart';
import 'package:flutter_speed_ui_app/view/d03_page_ui.dart';
import 'package:flutter_speed_ui_app/view/d04_page_ui.dart';
import 'package:flutter_speed_ui_app/view/d05_page_ui.dart';
import 'package:flutter_speed_ui_app/view/d06_page_ui.dart';
import 'package:flutter_speed_ui_app/view/d07_page_ui.dart';

import 'package:flutter_speed_ui_app/view/e01_page_ui.dart';
import 'package:flutter_speed_ui_app/view/e02_page_ui.dart';
import 'package:flutter_speed_ui_app/view/e03_page_ui.dart';
import 'package:flutter_speed_ui_app/view/e04_page_ui.dart';
import 'package:flutter_speed_ui_app/view/e05_page_ui.dart';
import 'package:flutter_speed_ui_app/view/e06_page_ui.dart';

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
        useMaterial3: true,
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),

      initialRoute: '/',

      // ตารางเส้นทาง (Routes) สำหรับทุกไฟล์ในโปรเจกต์
      routes: {
        '/': (context) => const HomeUi(),

        // Routes สำหรับ Group A
        '/a01': (context) => const A01PageUi(),
        '/a02': (context) => const A02PageUi(),

        // Routes สำหรับ Group B
        '/b01': (context) => const B01PageUi(),
        '/b02': (context) => const B02PageUi(),
        '/b03': (context) => const B03PageUi(),

        // Routes สำหรับ Group C
        '/c01': (context) => const C01PageUi(),
        '/c02': (context) => const C02PageUi(),
        '/c03': (context) => const C03PageUi(),

        // Routes สำหรับ Group D (หน้าจอที่เหมือนในรูปภาพ)
        '/d01': (context) => const D01PageUi(), // Welcome Screen
        '/d02': (context) => const D02PageUi(), // Login Screen
        '/d03': (context) => const D03PageUi(), // Register Screen
        '/d04': (context) => const D04PageUi(), // Forgot Password Screen
        '/d05': (context) => const D05PageUi(), // OTP Screen
        '/d06': (context) => const D06PageUi(), // New Password Screen
        '/d07': (context) => const D07PageUi(), // Success Screen

        // Routes สำหรับ Group E
        '/e01': (context) => const E01PageUi(),
        '/e02': (context) => const E02PageUi(),
        '/e03': (context) => const E03PageUi(),
        '/e04': (context) => const E04PageUi(),
        '/e05': (context) => const E05PageUi(),
        '/e06': (context) => const E06PageUi(),
      },
    );
  }
}
