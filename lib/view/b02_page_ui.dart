import 'package:flutter/material.dart';

class B02PageUi extends StatefulWidget {
  const B02PageUi({super.key});

  @override
  State<B02PageUi> createState() => _B02PageUiState();
}

class _B02PageUiState extends State<B02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Text(
                "Login here",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F41BB),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "Welcome back you've\nbeen missed!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              _buildTextField("Email"),
              const SizedBox(height: 20),
              _buildTextField("Password", isPassword: true),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot your password?",
                    style: TextStyle(
                        color: Color(0xFF1F41BB), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1F41BB),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 10,
                  shadowColor: const Color(0xFF1F41BB).withOpacity(0.5),
                ),
                child: const Text("Sign in",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 40),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, '/b03'),
                child: const Text(
                  "Create new account",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              const SizedBox(height: 50),
              const Text("Or continue with",
                  style: TextStyle(
                      color: Color(0xFF1F41BB), fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSocialIcon('assets/images/google2.png'),
                  const SizedBox(width: 15),
                  _buildSocialIcon('assets/images/facebook3.png'),
                  const SizedBox(width: 15),
                  _buildSocialIcon('assets/images/apple.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: const Color(0xFFF1F4FF),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFF1F41BB), width: 2),
        ),
      ),
    );
  }

  Widget _buildSocialIcon(String path) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFECECEC),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(path, height: 25),
    );
  }
}
