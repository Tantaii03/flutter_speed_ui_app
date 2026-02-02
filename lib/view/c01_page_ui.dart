import 'package:flutter/material.dart';

class C01PageUi extends StatefulWidget {
  const C01PageUi({super.key});

  @override
  State<C01PageUi> createState() => _C01PageUiState();
}

class _C01PageUiState extends State<C01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              'assets/images/img8.png',
              fit: BoxFit.cover,
              alignment: const Alignment(0.2, 0),
              errorBuilder: (context, error, stackTrace) =>
                  Container(color: Colors.green.shade900),
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  const Spacer(flex: 45),
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image.asset('assets/images/img10.png',
                          width: 90, height: 90),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text("HOPE FOR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.5)),
                  const Text("HUMANITY",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.5,
                          height: 0.8)),
                  const Spacer(flex: 30),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/c02'),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Column(
                        children: const [
                          Text("Welcome to",
                              style: TextStyle(
                                  color: Color(0xFF004D20),
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold)),
                          Text("hope for humanity",
                              style: TextStyle(
                                  color: Color(0xFF004D20),
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  height: 0.9)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
