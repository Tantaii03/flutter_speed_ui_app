import 'package:flutter/material.dart';

class E06PageUi extends StatefulWidget {
  const E06PageUi({super.key});

  @override
  State<E06PageUi> createState() => _E06PageUiState();
}

class _E06PageUiState extends State<E06PageUi> {
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeaderWithBack(sh, sw),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sw * 0.08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Text("Create New Password",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: sw * 0.07,
                          fontWeight: FontWeight.bold)),
                  const Text("Enter new password",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.grey)),
                  const SizedBox(height: 35),
                  _buildInput("Enter New password", isOrange: true),
                  const SizedBox(height: 20),
                  _buildInput("Confirm password"),
                  const SizedBox(height: 40),
                  _buildMainButton("Submit", () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/e02', (route) => false);
                  }, sw),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderWithBack(double sh, double sw) {
    return Stack(
      children: [
        Container(
            height: sh * 0.38,
            width: sw,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/img4.png'),
                    fit: BoxFit.cover))),
        Positioned(
            top: 50,
            left: 20,
            child: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.4),
                child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new,
                        size: 18, color: Colors.white),
                    onPressed: () => Navigator.pop(context)))),
      ],
    );
  }

  Widget _buildInput(String hint, {bool isOrange = false}) {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: hint,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                    color:
                        isOrange ? const Color(0xFFFF9933) : Colors.grey[300]!,
                    width: isOrange ? 2 : 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:
                    const BorderSide(color: Color(0xFFFF9933), width: 2))));
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
                    fontWeight: FontWeight.bold))));
  }
}
