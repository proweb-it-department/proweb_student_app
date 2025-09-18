import 'package:flutter/material.dart';

class PremiumContainer extends StatelessWidget {
  final String text;
  const PremiumContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.766, -1.0),
          end: Alignment(1.0, 0.5),
          colors: [Color(0xFF5296FD), Color(0xFFBF57FF)],
          stops: [0.28, 1.0],
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
