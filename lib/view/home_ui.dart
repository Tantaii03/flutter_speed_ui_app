import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/flow_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  final List<String> _flows = [
    'Flow Start',
    'Flow 1',
    'Flow 2',
    'Flow 3',
    'Flow 4',
    'Flow 5'
  ];

  int _selectedFlowIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 280,
            color: const Color(0xFF2C2C2C),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Flows',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.close, color: Colors.white70, size: 20),
                    ],
                  ),
                ),
                const Divider(color: Colors.white12, height: 1),
                Expanded(
                  child: ListView.builder(
                    itemCount: _flows.length,
                    itemBuilder: (context, index) {
                      final isSelected = _selectedFlowIndex == index;
                      return ListTile(
                        leading: isSelected
                            ? const Icon(Icons.check,
                                color: Colors.white, size: 18)
                            : const SizedBox(width: 18),
                        title: Text(
                          _flows[index],
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.white60,
                            fontSize: 15,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _selectedFlowIndex = index;
                          });
                        },
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'No description',
                    style: TextStyle(color: Colors.white38),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.black),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: const Color(0xFF2D004F),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/img6.png',
                    height: 250,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.image,
                      size: 100,
                      color: Colors.white24,
                    ),
                  ),
                  const SizedBox(height: 40),
                  _buildFlowButton(
                      context, 'Go to A Page', const Color(0xFFF496E8)),
                  _buildFlowButton(
                      context, 'Go to B Page', const Color(0xFF2444C0)),
                  _buildFlowButton(
                      context, 'Go to C Page', const Color(0xFF00B943)),
                  _buildFlowButton(
                      context, 'Go to D Page', const Color(0xFF3DC3C3)),
                  _buildFlowButton(
                      context, 'Go to E Page', const Color(0xFFF99820)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFlowButton(BuildContext context, String text, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 0,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FlowUi()),
            );
          },
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
