// lib/core/utils/image_helper.dart

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageHelper {
  ImageHelper._();
  static final ImagePicker _picker = ImagePicker();

  /// Pick a single image from gallery or camera
  static Future<File?> pickImage({
    ImageSource source = ImageSource.gallery,
    int imageQuality = 85,
  }) async {
    try {
      final XFile? xFile = await _picker.pickImage(
        source: source,
        imageQuality: imageQuality,
        requestFullMetadata: false,
      );

      if (xFile == null) return null;

      return File(xFile.path);
    } catch (e) {
      debugPrint('Something wrong error: $e');
      rethrow;
    }
  }
}
