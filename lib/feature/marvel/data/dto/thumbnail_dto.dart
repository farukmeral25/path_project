import 'dart:convert';

import 'package:flutter/cupertino.dart';

class ThumbnailDto {
  final String path;

  ThumbnailDto({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return {
      'path': path,
    };
  }

  factory ThumbnailDto.fromMap(Map<String, dynamic> map) {
    return ThumbnailDto(
      path: map['path'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ThumbnailDto.fromJson(String source) =>
      ThumbnailDto.fromMap(json.decode(source));

  Widget getImage() {
    return Image.network(
      path + "/portrait_xlarge.jpg",
      errorBuilder: ((context, error, stackTrace) => const SizedBox.shrink()),
    );
  }
}
