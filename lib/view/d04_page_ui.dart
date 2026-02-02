import 'package:flutter/material.dart';

class D04PageUi extends StatelessWidget {
  const D04PageUi({super.key});

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
              const SizedBox(height: 10),
              _buildBackButton(context),
              const SizedBox(height: 30),
              const Text("Forgot Password?",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              const Text(
                  "Don't worry! It occurs. Please enter the email address linked with your account.",
                  style: TextStyle(
                      color: Color(0xFF6A707C), fontSize: 16, height: 1.5)),
              const SizedBox(height: 40),
              _buildTextField("Enter your email"),
              const SizedBox(height: 30),
              _buildMainButton(
                  "Send Code", () => Navigator.pushNamed(context, '/d05')),
              const Spacer(),
              _buildFooter(context, "Remember Password? ", "Login",
                  () => Navigator.pushNamed(context, '/d02')),
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

  Widget _buildFooter(
          BuildContext context, String text, String link, VoidCallback onTap) =>
      Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Center(
          child: GestureDetector(
              onTap: onTap,
              child: RichText(
                  text: TextSpan(
                      text: text,
                      style: const TextStyle(
                          color: Color(0xFF1E232C), fontSize: 15),
                      children: [
                    TextSpan(
                        text: link,
                        style: const TextStyle(
                            color: Color(0xFF35C2C1),
                            fontWeight: FontWeight.bold))
                  ]))),
        ),
      );
}
