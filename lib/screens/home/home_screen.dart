import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skibidi_roast/blocs/skibidi_bloc/skibidi_bloc.dart';
import 'package:skibidi_roast/constants.dart';
import 'package:skibidi_roast/routes/route_names.dart';
import 'package:skibidi_roast/screens/home/widget/action_button.dart';
import 'package:skibidi_roast/service/image_helper.dart';
import 'package:skibidi_roast/theme/app_colors.dart';
import 'package:skibidi_roast/widgets/app_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ValueNotifier<File?> selectedImage = ValueNotifier(null);
  String uploadRoast = '';
  String imageRoast = '';

  @override
  void initState() {
    super.initState();
    uploadRoast =
        roastUploadPrompts[Random().nextInt(roastUploadPrompts.length)];
    imageRoast = postUploadPrompts[Random().nextInt(postUploadPrompts.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 5,
        surfaceTintColor: AppColors.white,
        title: const Text(
          'SkibidiRoast',
          style: TextStyle(
            color: AppColors.black,
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
                        onTap: () async {
                          if (imageFile != null) {
                            selectedImage.value = null;
                          } else {
                            selectedImage.value = await ImageHelper.pickImage();
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.4,
                          padding: EdgeInsets.symmetric(
                            horizontal: imageFile != null ? 10 : 40,
                            vertical: imageFile != null ? 10 : 40,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: AppColors.background,
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
                                        color: AppColors.lightOrange,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Icon(
                                        Icons.image_outlined,
                                        size: 32,
                                        color: AppColors.primary,
                                      ),
                                    ),
                                    const SizedBox(height: 24),
                                    const Text(
                                      'Drop Your Selfie Here',
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

                  ValueListenableBuilder(
                    valueListenable: selectedImage,
                    builder: (context, value, child) {
                      return Text(
                        textAlign: TextAlign.center,
                        selectedImage.value == null ? uploadRoast : imageRoast,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 12),
                  Spacer(),
                  ValueListenableBuilder(
                    valueListenable: selectedImage,
                    builder: (context, imageFile, child) {
                      return imageFile == null
                          ? SizedBox.shrink()
                          : RoastButton(
                              text: 'Roast me',
                              onPressed: () {
                                if (selectedImage.value == null) return;
                                context.read<SkibidiBloc>().add(
                                  SkibidiEvent.sendPicForRoast(
                                    selectedImage.value!,
                                  ),
                                );
                                context.push(RoutePath.yourAIRoast);
                              },
                            );
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
                          color: AppColors.blue,
                          onPressed: () async {
                            selectedImage.value = await ImageHelper.pickImage();
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ActionButton(
                          label: 'Take Photo',
                          icon: Icons.camera_alt_outlined,
                          color: AppColors.green,
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
