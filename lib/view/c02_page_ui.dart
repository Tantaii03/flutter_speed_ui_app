import 'package:flutter/material.dart';

class C02PageUi extends StatefulWidget {
  const C02PageUi({super.key});

  @override
  State<C02PageUi> createState() => _C02PageUiState();
}

class _C02PageUiState extends State<C02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            const SizedBox(height: 80),
            // โลโก้ H เล็กๆ ด้านบน
            Center(child: Image.asset('assets/images/img10.png', height: 70)),
            const SizedBox(height: 60),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sign in your account",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 40),
            _buildInput("Email", "ex: jon.smith@email.com"),
            const SizedBox(height: 20),
            _buildInput("Password", "*********", isPass: true),
            const SizedBox(height: 30),
            // ปุ่ม SIGN IN สีเขียว
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00B140),
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text("SIGN IN",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
            const SizedBox(height: 30),
            const Text("or sign in with", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 20),
            // Social Icons (Google, Facebook, Twitter)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _socialBtn('assets/images/google.png'),
                const SizedBox(width: 15),
                _socialBtn('assets/images/facebook1.png'),
                const SizedBox(width: 15),
                _socialBtn('assets/images/twitter.png'),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/c03'),
                  child: const Text("SIGN UP",
                      style: TextStyle(
                          color: Color(0xFF00B140),
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInput(String label, String hint, {bool isPass = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 16)),
        const SizedBox(height: 8),
        TextField(
          obscureText: isPass,
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: const Color(0xFFF5F5F5),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
          ),
        ),
      ],
    );
  }

  Widget _socialBtn(String img) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(10)),
      child: Image.asset(img, height: 25),
    );
  }
}
