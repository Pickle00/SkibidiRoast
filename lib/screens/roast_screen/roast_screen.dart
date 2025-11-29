import 'package:flutter/material.dart';

class RoastScreen extends StatefulWidget {
  const RoastScreen({super.key});

  @override
  State<RoastScreen> createState() => _RoastScreenState();
}

class _RoastScreenState extends State<RoastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Your AI Roast',
          style: TextStyle(
            color: Colors.black,
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: AspectRatio(
                    aspectRatio: 4 / 4,
                    child: Container(
                      color: Colors.grey[200],
                      child: const Icon(
                        Icons.person,
                        size: 120,
                        color: Colors.grey,
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
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black,
                    ),
                    children: [
                      const TextSpan(
                        text:
                            'You look like you tried to download a personality and the ',
                      ),
                      TextSpan(
                        text: 'file got corrupted.',
                        style: TextStyle(
                          color: Colors.orange[600],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const TextSpan(text: ' At least your face is an '),
                      const TextSpan(
                        text: 'error',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      const TextSpan(text: ' worth looking at.'),
                    ],
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
                  EmojiButton(emoji: '🔥', isSelected: true, onPressed: () {}),
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
