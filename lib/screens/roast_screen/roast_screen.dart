import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:skibidi_roast/blocs/skibidi_bloc/skibidi_bloc.dart';
import 'package:skibidi_roast/screens/roast_screen/cooking.dart';
import 'package:skibidi_roast/theme/app_colors.dart';

class RoastScreen extends StatefulWidget {
  const RoastScreen({super.key});

  @override
  State<RoastScreen> createState() => _RoastScreenState();
}

class _RoastScreenState extends State<RoastScreen> {
  String roast = '';
  File? image;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SkibidiBloc, SkibidiState>(
      listener: (context, state) {
        if (state is SkibidiError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
              backgroundColor: AppColors.red,
            ),
          );
          context.pop();
        }
      },
      builder: (context, state) {
        if (state is SkibidiCookingRoast) {
          return Scaffold(
            body: CookingScreen(),
          );
        }
        if (state is SkibidiRoastGenerated) {
          roast = state.roast;
          image = state.image;
        }
        return Scaffold(
          backgroundColor: AppColors.background,
          appBar: AppBar(
            surfaceTintColor: AppColors.white,
            backgroundColor: AppColors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: AppColors.black),
              onPressed: () => Navigator.pop(context),
            ),
            title: const Text(
              'Your AI Roast',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  // Profile Image Card
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: AspectRatio(
                        aspectRatio: 4 / 4,
                        child: Container(
                          color: AppColors.background,
                          child: image == null
                              ? const Icon(
                                  Icons.person,
                                  size: 120,
                                  color: Colors.grey,
                                )
                              : Image.file(
                                  image!,
                                  width: double.infinity,
                                  height: 300,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Roast Text
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Text(
                      roast,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Emoji Reactions
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      EmojiButton(emoji: '😂', onPressed: () {}),
                      const SizedBox(width: 12),
                      EmojiButton(emoji: '😂', onPressed: () {}),
                      const SizedBox(width: 12),
                      EmojiButton(
                        emoji: '🔥',
                        isSelected: true,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 12),
                      EmojiButton(emoji: '💀', onPressed: () {}),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Share Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.share, size: 20),
                      label: const Text(
                        'Share Roast',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange[600],
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 0,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Roast Another Photo',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange[600],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class EmojiButton extends StatelessWidget {
  final String emoji;
  final bool isSelected;
  final VoidCallback onPressed;

  const EmojiButton({
    super.key,
    required this.emoji,
    this.isSelected = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelected ? Colors.orange[600]! : Colors.grey[200]!,
              width: isSelected ? 2.5 : 1.5,
            ),
          ),
          child: Center(
            child: Text(emoji, style: const TextStyle(fontSize: 28)),
          ),
        ),
      ),
    );
  }
}
