import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skibidi_roast/screens/home/widget/action_button.dart';
import 'package:skibidi_roast/service/image_helper.dart';
import 'package:skibidi_roast/widgets/app_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ValueNotifier<File?> selectedImage = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        surfaceTintColor: Colors.white,
        title: const Text(
          'Get Roasted',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  // Upload Area
                  ValueListenableBuilder(
                    valueListenable: selectedImage,
                    builder: (context, imageFile, child) {
                      return GestureDetector(
                        onTap: () {
                          selectedImage.value = null;
                        },
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.4,
                          padding: EdgeInsets.symmetric(
                            horizontal: imageFile != null ? 10 : 40,
                            vertical: imageFile != null ? 10 : 40,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 2,
                              strokeAlign: BorderSide.strokeAlignInside,
                            ),
                          ),
                          child: imageFile == null
                              ? Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 64,
                                      height: 64,
                                      decoration: BoxDecoration(
                                        color: Colors.orange[50],
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Icon(
                                        Icons.image_outlined,
                                        size: 32,
                                        color: Colors.orange[600],
                                      ),
                                    ),
                                    const SizedBox(height: 24),
                                    const Text(
                                      'Show Me Your Mug',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'or tap to browse',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ],
                                )
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(24),
                                  child: Image.file(
                                    imageFile,
                                    width: double.infinity,
                                    height: 300,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 32),

                  const Text(
                    'Give our AI your best shot.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 12),
                  Spacer(),
                  ValueListenableBuilder(
                    valueListenable: selectedImage,
                    builder: (context, imageFile, child) {
                      return imageFile == null
                          ? SizedBox.shrink()
                          : RoastButton(text: 'Roast me', onPressed: () {});
                    },
                  ),
                  const SizedBox(height: 24),
                  // Action Buttons
                  Row(
                    children: [
                      Expanded(
                        child: ActionButton(
                          label: 'From Gallery',
                          icon: Icons.collections_outlined,
                          color: Colors.blue,
                          onPressed: () async {
                            // context.push(RoutePath.yourAIRoast);
                            selectedImage.value = await ImageHelper.pickImage();
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ActionButton(
                          label: 'Take Photo',
                          icon: Icons.camera_alt_outlined,
                          color: Colors.green,
                          onPressed: () async {
                            selectedImage.value = await ImageHelper.pickImage(
                              source: ImageSource.camera,
                            );
                          },
                        ),
                      ),
                    ],
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
