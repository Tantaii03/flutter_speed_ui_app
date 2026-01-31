import 'package:flutter/material.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF390050),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(height: 60),

              Center(
                child: Image.asset(
                  'assets/images/img6.png',
                  height: 250,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 40),

              // 3. รายการปุ่มกด (สร้าง Helper Method เพื่อลดโค้ดซ้ำ)
              buildMenuButton(context, "Go to A Page", const Color(0xFFF794F3)),
              buildMenuButton(context, "Go to B Page", const Color(0xFF2344BB)),
              buildMenuButton(context, "Go to C Page", const Color(0xFF00B844)),
              buildMenuButton(context, "Go to D Page", const Color(0xFF3DC5C1)),
              buildMenuButton(context, "Go to E Page", const Color(0xFFF99D1C)),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuButton(BuildContext context, String text, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: ElevatedButton(
        onPressed: () {
          // ใส่คำสั่ง Navigator.push ที่นี่
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
