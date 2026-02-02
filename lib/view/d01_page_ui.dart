import 'package:flutter/material.dart';

class D01PageUi extends StatelessWidget {
  const D01PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    // ใช้ MediaQuery เพื่อเช็คขนาดหน้าจอ
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.5,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img5.png'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/images/img3.png',
                    height: screenHeight * 0.1,
                    fit: BoxFit.contain,
                  ),
                  const Spacer(),
                  _buildButton(
                    context,
                    label: "Login",
                    color: const Color(0xFF1E232C),
                    textColor: Colors.white,
                    onPressed: () => Navigator.pushNamed(context, '/d02'),
                  ),
                  const SizedBox(height: 15),
                  _buildButton(
                    context,
                    label: "Register",
                    color: Colors.white,
                    textColor: const Color(0xFF1E232C),
                    isOutlined: true,
                    onPressed: () => Navigator.pushNamed(context, '/d03'),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Continue as a guest",
                      style: TextStyle(
                        color: Color(0xFF35C2C1),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context,
      {required String label,
      required Color color,
      required Color textColor,
      required VoidCallback onPressed,
      bool isOutlined = false}) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: isOutlined
          ? OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: textColor, width: 1.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: Text(label,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 0,
              ),
              child: Text(label,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
    );
  }
}
