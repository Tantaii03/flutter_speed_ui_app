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
          // 1. ภาพพื้นหลังเต็มจอ (Fit แบบ Cover)
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img8.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 2. Overlay บางๆ (เพื่อให้ภาพดูนวลและข้อความสีขาวอ่านง่ายขึ้น)
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.05),
          ),

          // 3. เนื้อหาหลัก จัดวางตามสัดส่วนในภาพ 98%
          SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const Spacer(
                      flex: 8), // ดันโลโก้ลงมาให้อยู่ช่วงกลางตัวคนตามภาพ

                  // โลโก้ H ในกรอบสีขาวขอบมน (Rounded Box)
                  Container(
                    width: 150, // ปรับขนาดให้ใหญ่เด่นตามภาพ
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35), // ขอบมนสวยงาม
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/img10.png',
                        height: 100, // ขนาดตัว H สีเขียวด้านใน
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // ข้อความ HOPE FOR HUMANITY
                  const Text(
                    "HOPE FOR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const Text(
                    "HUMANITY",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      height: 0.9, // ให้บรรทัดชิดกันตามแบบ
                    ),
                  ),

                  const Spacer(
                      flex: 4), // เว้นระยะห่างระหว่างหัวข้อกับข้อความล่าง

                  // ข้อความ Welcome สีเขียวเข้ม (Dark Green) ตามภาพ
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/c02'),
                    child: Column(
                      children: const [
                        Text(
                          "Welcome to",
                          style: TextStyle(
                            color: Color(0xFF004D20), // สีเขียวเข้มจัด
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "hope for humanity",
                          style: TextStyle(
                            color: Color(0xFF004D20),
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            height: 0.9,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Spacer(flex: 2), // พื้นที่ว่างด้านล่างสุด
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
