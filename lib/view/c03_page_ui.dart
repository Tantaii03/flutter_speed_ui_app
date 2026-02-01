import 'package:flutter/material.dart';

class C03PageUi extends StatefulWidget {
  const C03PageUi({super.key});

  @override
  State<C03PageUi> createState() => _C03PageUiState();
}

class _C03PageUiState extends State<C03PageUi> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.crop_square,
                  color: Color(0xFF00B140)), // ไอคอน H เล็กๆ มุมขวา
            ),
            const SizedBox(height: 40),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Create your account",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            _buildInput("Name", "ex: jon smith"),
            const SizedBox(height: 15),
            _buildInput("Email", "ex: jon.smith@email.com"),
            const SizedBox(height: 15),
            _buildInput("Password", "*********", isPass: true),
            const SizedBox(height: 15),
            _buildInput("Confirm password", "*********", isPass: true),
            const SizedBox(height: 10),
            // Checkbox Terms
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (val) => setState(() => isChecked = val!),
                  activeColor: const Color(0xFF00B140),
                ),
                const Text("I understood the "),
                const Text("terms & policy.",
                    style: TextStyle(color: Color(0xFF00B140))),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00B140),
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text("SIGN UP",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
            const SizedBox(height: 30),
            const Text("or sign up with", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 20),
            // Social Buttons
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
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Have an account? "),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Text("SIGN IN",
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

  // ใช้ Widget _buildInput และ _socialBtn เหมือนหน้า C02
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
