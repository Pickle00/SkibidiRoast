import 'package:flutter/material.dart';
import 'package:skibidi_roast/theme/app_colors.dart';

class RoastButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final IconData? icon;
  final bool showIcon;
  final double height;
  final double? width;
  final double fontSize;
  final double iconSize;

  const RoastButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = AppColors.primary,
    this.textColor = Colors.white,
    this.icon,
    this.showIcon = true,
    this.height = 60,
    this.width,
    this.fontSize = 20,
    this.iconSize = 32,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height / 2),
          ),
          padding: EdgeInsets.symmetric(horizontal: height / 2, vertical: 0),
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            if (showIcon) ...[
              Positioned(
                right: 0,
                top: (height - (height * 0.7)) / 2,
                child: Container(
                  width: height * 0.7,
                  height: height * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      icon ?? Icons.local_fire_department_sharp,
                      size: iconSize,
                      color: textColor,
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
