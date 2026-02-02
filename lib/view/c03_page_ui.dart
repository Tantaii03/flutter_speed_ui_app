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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new,
                        size: 20, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Text("9:45",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const Spacer(),
                  const Icon(Icons.signal_cellular_alt, size: 18),
                  const SizedBox(width: 5),
                  const Icon(Icons.wifi, size: 18),
                  const SizedBox(width: 5),
                  const Icon(Icons.battery_full, size: 18),
                  const SizedBox(width: 15),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'assets/images/img10.png',
                        height: 35,
                        errorBuilder: (context, error, stackTrace) => Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFF00B140), width: 1.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(" H ",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF00B140),
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Create your account",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold)),
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
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (val) => setState(() => isChecked = val!),
                          activeColor: const Color(0xFF00B140),
                          side: const BorderSide(color: Color(0xFF00B140)),
                        ),
                        const Text("I understood the ",
                            style: TextStyle(color: Colors.grey)),
                        const Text("terms & policy.",
                            style: TextStyle(
                                color: Color(0xFF00B140),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00B140),
                        minimumSize: const Size(double.infinity, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      child: const Text("SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 30),
                    const Text("or sign up with",
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _socialBtn('assets/images/google.png'),
                        const SizedBox(width: 20),
                        _socialBtn('assets/images/facebook1.png'),
                        const SizedBox(width: 20),
                        _socialBtn('assets/images/twitter.png'),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Have an account? ",
                            style: TextStyle(color: Colors.grey, fontSize: 16)),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Text("SIGN IN",
                              style: TextStyle(
                                  color: Color(0xFF00B140),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
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
            fillColor: const Color(0xFFF8F8F8),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none),
          ),
        ),
      ],
    );
  }

  Widget _socialBtn(String img) {
    return Container(
      width: 75,
      height: 55,
      decoration: BoxDecoration(
          color: const Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
          child: Image.asset(img,
              height: 30, errorBuilder: (c, e, s) => const Icon(Icons.link))),
    );
  }
}
