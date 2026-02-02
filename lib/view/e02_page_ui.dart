import 'package:flutter/material.dart';

class E02PageUi extends StatefulWidget {
  const E02PageUi({super.key});

  @override
  State<E02PageUi> createState() => _E02PageUiState();
}

class _E02PageUiState extends State<E02PageUi> {
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeaderImage(sh, sw),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sw * 0.08),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text("Welcome back",
                      style: TextStyle(
                          fontSize: sw * 0.08,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins')),
                  const Text("Login to your account",
                      style:
                          TextStyle(color: Colors.grey, fontFamily: 'Poppins')),
                  const SizedBox(height: 30),
                  _buildInput("Enter email or phone"),
                  const SizedBox(height: 15),
                  _buildInput("Password", isPass: true),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/e04'),
                      child: const Text("Forgot Password ?",
                          style: TextStyle(
                              color: Color(0xFFFF9933),
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(height: 10),
                  _buildMainButton("Log In", () {}, sw),
                  const SizedBox(height: 25),
                  _buildDivider(sw),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _socialIcon('assets/images/google.png', sw),
                      SizedBox(width: sw * 0.08),
                      _socialIcon('assets/images/facebook2.png', sw),
                      SizedBox(width: sw * 0.08),
                      _socialIcon('assets/images/apple.png', sw),
                    ],
                  ),
                  const SizedBox(height: 40),
                  _buildFooterLink("Don't have an Account? ", "Create Account",
                      () {
                    Navigator.pushNamed(context, '/e03');
                  }, sw),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderImage(double sh, double sw) {
    return Container(
      height: sh * 0.38,
      width: sw,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img4.png'),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Widget _buildInput(String hint, {bool isPass = false}) {
    return TextField(
      obscureText: isPass,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: isPass
            ? const Icon(Icons.visibility_off_outlined, color: Colors.grey)
            : null,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey[300]!)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Color(0xFFFF9933), width: 2)),
      ),
    );
  }

  Widget _buildMainButton(String text, VoidCallback onTap, double sw) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
            colors: [Color(0xFFFFCC33), Color(0xFFFF9933)]),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text(text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildDivider(double sw) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text("OR", style: TextStyle(color: Colors.grey[400]))),
        const Expanded(child: Divider()),
      ],
    );
  }

  Widget _socialIcon(String path, double sw) {
    return Image.asset(path,
        width: sw * 0.09,
        errorBuilder: (c, e, s) => Icon(Icons.error, size: sw * 0.09));
  }

  Widget _buildFooterLink(
      String pre, String link, VoidCallback onTap, double sw) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          style: TextStyle(
              color: Colors.black, fontSize: sw * 0.038, fontFamily: 'Poppins'),
          children: [
            TextSpan(text: pre),
            TextSpan(
                text: link,
                style: const TextStyle(
                    color: Color(0xFFFF9933), fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
