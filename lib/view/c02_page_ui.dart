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
                  const Text("9:19",
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
                    const SizedBox(height: 20),
                    Center(
                      child: Image.asset(
                        'assets/images/img10.png',
                        height: 80,
                        errorBuilder: (context, error, stackTrace) => Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFF00B140), width: 2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(" H ",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xFF00B140),
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Sign in your account",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 35),
                    _buildInput("Email", "ex: jon.smith@email.com"),
                    const SizedBox(height: 20),
                    _buildInput("Password", "*********", isPass: true),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00B140),
                        minimumSize: const Size(double.infinity, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      child: const Text("SIGN IN",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 30),
                    const Text("or sign in with",
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                    const SizedBox(height: 30),
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
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? ",
                            style: TextStyle(color: Colors.grey, fontSize: 16)),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/c03'),
                          child: const Text("SIGN UP",
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
        const SizedBox(height: 10),
        TextField(
          obscureText: isPass,
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: const Color(0xFFF8F8F8),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
