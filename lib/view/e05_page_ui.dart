import 'package:flutter/material.dart';

class E05PageUi extends StatefulWidget {
  const E05PageUi({super.key});

  @override
  State<E05PageUi> createState() => _E05PageUiState();
}

class _E05PageUiState extends State<E05PageUi> {
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const CircleAvatar(
              backgroundColor: Color(0xFFFFF9E5),
              child: Icon(Icons.arrow_back_ios_new,
                  size: 18, color: Color(0xFFFFCC33)),
            ),
          ),
        ),
        title: const Text(
          "OTP Verification",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: sw * 0.08),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/img2.png',
                height: sh * 0.35,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 40),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter OTP",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "An 4 digit code has been sent to your email",
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Poppins',
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _otpBox(sw),
                  _otpBox(sw),
                  _otpBox(sw),
                  _otpBox(sw),
                ],
              ),
              const SizedBox(height: 30),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                      color: Colors.black, fontSize: 15, fontFamily: 'Poppins'),
                  children: [
                    TextSpan(text: "You should receive the OTP in "),
                    TextSpan(
                      text: "30 Second",
                      style: TextStyle(
                          color: Color(0xFFFF9933),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              _buildGradientButton("Verify", sw, () {
                Navigator.pushNamed(context, '/e06');
              }),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _otpBox(double sw) {
    return Container(
      width: sw * 0.18,
      height: sw * 0.18,
      decoration: BoxDecoration(
        color: const Color(0xFFF3F3F3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          counterText: "",
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildGradientButton(String text, double sw, VoidCallback onTap) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [Color(0xFFFFCC33), Color(0xFFFF9933)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFF9933).withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
