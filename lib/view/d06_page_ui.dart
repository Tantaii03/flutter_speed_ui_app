import 'package:flutter/material.dart';

class D06PageUi extends StatelessWidget {
  const D06PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStatusBar(),
              _buildBackButton(context),
              const SizedBox(height: 30),
              const Text("Create New Password",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              const Text(
                  "Your new password must be unique from those previously used.",
                  style: TextStyle(color: Color(0xFF6A707C), fontSize: 16)),
              const SizedBox(height: 40),
              _buildTextField("New Password"),
              const SizedBox(height: 15),
              _buildTextField("Confirm Password"),
              const SizedBox(height: 30),
              _buildMainButton(
                  "Reset Password", () => Navigator.pushNamed(context, '/d07')),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusBar() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("09:41",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Row(children: const [
              Icon(Icons.signal_cellular_alt, size: 18),
              SizedBox(width: 4),
              Icon(Icons.wifi, size: 18),
              SizedBox(width: 4),
              Icon(Icons.battery_full, size: 18)
            ]),
          ],
        ),
      );

  Widget _buildBackButton(BuildContext context) => Container(
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFE8ECF4)),
            borderRadius: BorderRadius.circular(12)),
        child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new, size: 20)),
      );

  Widget _buildTextField(String hint) => TextField(
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: const Color(0xFFF7F8F9),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFE8ECF4))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFE8ECF4))),
        ),
      );

  Widget _buildMainButton(String text, VoidCallback onPress) => SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
            onPressed: onPress,
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E232C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            child: Text(text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold))),
      );
}
