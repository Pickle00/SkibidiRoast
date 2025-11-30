import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF3F0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: const Color(0xFFFF4433),
                borderRadius: BorderRadius.circular(28),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFFF4433).withValues(alpha: 0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ]
                ,
              ),
              child: const Icon(
                Icons.local_fire_department,
                size: 70,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            // App Name
            const Text(
              'SkibidiRoast',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A1A1A),
                letterSpacing: -0.5,
              ),
            ),
            const SizedBox(height: 12),
            // Tagline
            const Text(
              'Get ready to get roasted!',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF666666),
                letterSpacing: 0.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
