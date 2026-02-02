import 'package:flutter/material.dart';

class E03PageUi extends StatefulWidget {
  const E03PageUi({super.key});

  @override
  State<E03PageUi> createState() => _E03PageUiState();
}

class _E03PageUiState extends State<E03PageUi> {
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: sh * 0.35,
                  width: sw,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/img4.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.4),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new,
                          size: 18, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sw * 0.08),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text("Register",
                      style: TextStyle(
                          fontSize: sw * 0.09,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins')),
                  const Text("Create your new account",
                      style:
                          TextStyle(color: Colors.grey, fontFamily: 'Poppins')),

                  const SizedBox(height: 25),
                  _buildInput("Name"),
                  const SizedBox(height: 12),
                  _buildInput("E-mail"),
                  const SizedBox(height: 12),
                  _buildInput("Phone"),
                  const SizedBox(height: 12),
                  _buildInput("Password", isPass: true),

                  const SizedBox(height: 15),

                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: sw * 0.03,
                          fontFamily: 'Poppins'),
                      children: const [
                        TextSpan(text: "By signing up you agree to our "),
                        TextSpan(
                            text: "Terms & Conditions",
                            style: TextStyle(
                                color: Color(0xFFFF9933),
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: "\nand "),
                        TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                                color: Color(0xFFFF9933),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),
                  _buildMainButton("Sign Up", () {}, sw),

                  const SizedBox(height: 20),
                  _buildDivider(sw),
                  const SizedBox(height: 20),

                  // Social Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _socialIcon('assets/images/google.png', sw),
                      SizedBox(width: sw * 0.1),
                      _socialIcon('assets/images/facebook2.png', sw),
                      SizedBox(width: sw * 0.1),
                      _socialIcon('assets/images/apple.png', sw),
                    ],
                  ),

                  const SizedBox(height: 30),
                  _buildFooterLink("Already have an Account? ", "Log In", () {
                    Navigator.pop(context);
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

  Widget _buildInput(String hint, {bool isPass = false}) {
    return TextField(
      obscureText: isPass,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
              colors: [Color(0xFFFFCC33), Color(0xFFFF9933)])),
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent),
          child: Text(text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold))),
    );
  }

  Widget _buildDivider(double sw) {
    return Row(children: [
      const Expanded(child: Divider()),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text("OR", style: TextStyle(color: Colors.grey[400]))),
      const Expanded(child: Divider())
    ]);
  }

  Widget _socialIcon(String path, double sw) {
    return Image.asset(path,
        width: sw * 0.1,
        errorBuilder: (c, e, s) => Icon(Icons.error, size: sw * 0.1));
  }

  Widget _buildFooterLink(
      String pre, String link, VoidCallback onTap, double sw) {
    return GestureDetector(
        onTap: onTap,
        child: RichText(
            text: TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: sw * 0.038,
                    fontFamily: 'Poppins'),
                children: [
              TextSpan(text: pre),
              TextSpan(
                  text: link,
                  style: const TextStyle(
                      color: Color(0xFFFF9933), fontWeight: FontWeight.bold))
            ])));
  }
}
