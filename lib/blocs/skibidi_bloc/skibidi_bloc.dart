import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mime/mime.dart';
import 'package:skibidi_roast/models/gemini_model.dart';
import 'package:skibidi_roast/repository/gemini_ai_repo.dart/gemini_api_repo.dart';

part 'skibidi_event.dart';
part 'skibidi_state.dart';
part 'skibidi_bloc.freezed.dart';

class SkibidiBloc extends Bloc<SkibidiEvent, SkibidiState> {
  SkibidiBloc() : super(Initial()) {
    on<SendPicForRoast>(_onSendPicForRoast);
  }

  Future<void> _onSendPicForRoast(
    SendPicForRoast event,
    Emitter<SkibidiState> emit,
  ) async {
    final currentState = state;
    try {
      if (currentState is SkibidiCookingRoast) return;
      emit(SkibidiCookingRoast());
      File image = event.image;
      final Uint8List bytes = await image.readAsBytes();
      final String name = image.path.split('/').last;
      final String mimeType = lookupMimeType(name) ?? 'image/jpeg';
      final String base64Image = base64Encode(bytes);
      String prompt =
          """Goal: Deliver one single, devastating roast so sharp they’ll screenshot it while questioning every life decision that led to this moment. Must be clever, brutal, and instantly viral-worthy.
Core Rules:
Zero mercy, zero filter, maximum precision
Brutal honesty with clever wordplay, savage exaggeration, or absurd comparisons
Allowed and encouraged: compare them to anime characters, TV/show villains, celebrities, historical figures, objects, animals, anything that fits the resemblance or vibe
If face is hidden/blurred/cropped: roast the cowardice, insecurity, or “fugitive energy” creatively
Tone: cold-blooded, sarcastic, witty, occasionally poetic in its cruelty
Output Format (STRICT):
Exactly ONE line (max 20 words)
OR one single word if it obliterates on impact
No paragraphs, no lists, no explanations, no emojis unless they’re part of the punchline

Roast this person in the photo as if you are speaking directly to them. 💥""";
      // 1. Build InlineData (your image)
      final InlineData inlineData = InlineData(
        mimeType: mimeType,
        data: base64Image,
      );

      // 2. Create image part (ONLY inline_data)
      final Part imagePart = Part(inlineData: inlineData);

      // 3. Create text part (ONLY text)
      final Part textPart = Part(text: prompt);

      // 4. Add both parts inside a single Content
      final Content content = Content(
        parts: [
          imagePart, // the picture
          textPart, // your roast prompt
        ],
      );

      // 5. Wrap inside GeminiModel
      final GeminiModel geminiModel = GeminiModel(contents: [content]);

      final String response = await GeminiApiRepo().generateContent(
        geminiModel,
      );
      emit(SkibidiRoastGenerated(response));
    } catch (e) {
      emit(SkibidiError(e.toString()));
    }
  }
}
