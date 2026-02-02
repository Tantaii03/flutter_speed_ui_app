import 'package:flutter/material.dart';

class D02PageUi extends StatelessWidget {
  const D02PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. จำลอง Status Bar (09:41 + Icons)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("09:41",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Row(
                      children: const [
                        Icon(Icons.signal_cellular_alt, size: 18),
                        SizedBox(width: 4),
                        Icon(Icons.wifi, size: 18),
                        SizedBox(width: 4),
                        Icon(Icons.battery_full, size: 18),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              // ปุ่ม Back
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFE8ECF4)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new, size: 20),
                ),
              ),

              const SizedBox(height: 30),
              const Text(
                "Welcome back! Glad\nto see you, Again!",
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, height: 1.2),
              ),

              const SizedBox(height: 40),
              _buildTextField("Enter your email"),
              const SizedBox(height: 15),
              _buildTextField("Enter your password", isPass: true),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/d04'),
                  child: const Text("Forgot Password?",
                      style: TextStyle(color: Color(0xFF6A707C))),
                ),
              ),

              const SizedBox(height: 10),
              _buildMainButton("Login", () {}),

              const SizedBox(height: 35),
              _buildDivider("Or Login with"),

              const SizedBox(height: 30),

              Row(
                children: [
                  _socialButton('assets/images/facebook1.png'),
                  const SizedBox(width: 15),
                  _socialButton('assets/images/google.png'),
                  const SizedBox(width: 15),
                  _socialButton('assets/images/apple.png'),
                ],
              ),

              const SizedBox(height: 40),
              _buildFooter(
                  context, "Don't have an account? ", "Register Now", '/d03'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {bool isPass = false}) => TextField(
        obscureText: isPass,
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: const Color(0xFFF7F8F9),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Text(text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ),
      );

  Widget _socialButton(String iconPath) => Expanded(
        child: Container(
          height: 55,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFE8ECF4)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(iconPath, fit: BoxFit.contain),
        ),
      );

  Widget _buildDivider(String text) => Row(
        children: [
          const Expanded(child: Divider(thickness: 1)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(text, style: const TextStyle(color: Colors.grey)),
          ),
          const Expanded(child: Divider(thickness: 1)),
        ],
      );

  Widget _buildFooter(
          BuildContext context, String text, String link, String route) =>
      Center(
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, route),
          child: RichText(
            text: TextSpan(
              text: text,
              style: const TextStyle(color: Color(0xFF1E232C), fontSize: 15),
              children: [
                TextSpan(
                    text: link,
                    style: const TextStyle(
                        color: Color(0xFF35C2C1), fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      );
}
