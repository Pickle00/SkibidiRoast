import 'package:flutter/material.dart';
import 'package:skibidi_roast/theme/app_colors.dart';

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
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(28),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: 0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.asset('assets/icons/app_icon.png'),
              ),
            ),

            const SizedBox(height: 40),

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
