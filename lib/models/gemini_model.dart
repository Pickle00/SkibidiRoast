import 'package:equatable/equatable.dart';

class Part extends Equatable {
  final String? text;
  final InlineData? inlineData;

  const Part({this.text, this.inlineData});

  Map<String, dynamic> toJson() {
    return {
      if (text != null) 'text': text,
      if (inlineData != null) 'inline_data': inlineData!.toJson(),
    };
  }

  @override
  List<Object?> get props => [text, inlineData];
}

class InlineData extends Equatable {
  final String mimeType;
  final String data; // base64

  const InlineData({required this.mimeType, required this.data});

  Map<String, dynamic> toJson() => {'mime_type': mimeType, 'data': data};

  @override
  List<Object?> get props => [mimeType, data];
}

class Content extends Equatable {
  final List<Part> parts;

  const Content({required this.parts});

  Map<String, dynamic> toJson() => {
    'parts': parts.map((p) => p.toJson()).toList(),
  };

  @override
  List<Object?> get props => [parts];
}

class GeminiModel extends Equatable {
  final List<Content> contents;

  const GeminiModel({required this.contents});

  @override
  List<Object?> get props => [contents];
}
