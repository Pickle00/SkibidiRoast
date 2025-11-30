import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:skibidi_roast/constants.dart';
import 'package:skibidi_roast/models/gemini_model.dart';

class GeminiApiRepo {
  final String model = 'gemini-2.5-flash';
  Future<String> generateContent(GeminiModel message) async {
    final uri = Uri.parse(
      'https://generativelanguage.googleapis.com/v1beta/models/$model:generateContent',
    );

    final body = jsonEncode({
      "contents": message.contents.map((c) => c.toJson()).toList(),
      "generationConfig": {
        "temperature": 1.0,
        "topP": 0.95,
        // "maxOutputTokens": 50,
      },
      "safetySettings": [
        {"category": "HARM_CATEGORY_HARASSMENT", "threshold": "BLOCK_NONE"},
        {"category": "HARM_CATEGORY_HATE_SPEECH", "threshold": "BLOCK_NONE"},
      ],
    });

    final response = await http
        .post(
          uri,
          headers: {
            'Content-Type': 'application/json',
            'x-goog-api-key': apiKey,
          },
          body: body,
        )
        .timeout(const Duration(seconds: 30));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      log('Gemini response: ${data.toString()}');

      // Extract the roast text safely
      final candidates = data['candidates'] as List<dynamic>?;
      if (candidates == null || candidates.isEmpty) {
        throw Exception("Gemini didn't return any roast. Mid model?");
      }

      final parts = candidates.first['content']['parts'] as List<dynamic>?;
      if (parts == null || parts.isEmpty) {
        throw Exception("Gemini forgot to roast you. L + ratio");
      }

      final roastText = parts.first['text'] as String?;
      if (roastText == null || roastText.trim().isEmpty) {
        throw Exception("Gemini tried to be nice. Weak.");
      }

      return roastText.trim();
    } else {
      // Parse error properly
      final errorBody = jsonDecode(response.body);
      final message = errorBody['error']?['message'] ?? 'Unknown error';
      throw Exception('API Error ${response.statusCode}: $message');
    }
  }
}
