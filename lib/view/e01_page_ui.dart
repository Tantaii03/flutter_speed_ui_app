import 'package:flutter/material.dart';

class E01PageUi extends StatelessWidget {
  const E01PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 100),
              width: 320,
              height: 460,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/img1.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "BERRY JUICE",
                    style: TextStyle(
                      fontFamily: 'Abril Fatface',
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      height: 1.0,
                      letterSpacing: 1.2,
                      color: const Color(0xFF1E1E1E),
                      shadows: [
                        Shadow(
                          offset: const Offset(0, 3),
                          blurRadius: 4.0,
                          color: const Color(0xFFFAA91E).withOpacity(0.8),
                        ),
                        const Shadow(
                          offset: Offset(0, 1),
                          blurRadius: 1.0,
                          color: Color(0xFFFAA91E),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "A \"Moments of healthy sip\nThe best vitamin for your health",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 45),
                  Container(
                    width: double.infinity,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFFFCC33), Color(0xFFFF9933)],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFFF9933).withOpacity(0.4),
                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/e02'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Explore Now",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.white, size: 24),
                          ],
                        ),
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
