import 'package:flutter/material.dart';

class FlowUi extends StatelessWidget {
  const FlowUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:
            const Text('Flow Details', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF2C2C2C),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const Center(
        child: Text(
          'Flow Details',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
