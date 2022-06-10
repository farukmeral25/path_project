import 'dart:convert';

import 'package:path_project/feature/marvel/data/dto/comic_dto.dart';
import 'package:path_project/feature/marvel/data/dto/thumbnail_dto.dart';

class MarvelCharacterInfoDto {
  final int id;
  final String name;
  final ComicDto comics;
  final ThumbnailDto thumbnail;
  final String? description;

  MarvelCharacterInfoDto({
    required this.id,
    required this.name,
    required this.comics,
    required this.thumbnail,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'comics': comics.toMap(),
      'thumbnail': thumbnail.toMap(),
      'description': description,
    };
  }

  factory MarvelCharacterInfoDto.fromMap(Map<String, dynamic> map) {
    return MarvelCharacterInfoDto(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      comics: ComicDto.fromMap(map['comics']),
      thumbnail: ThumbnailDto.fromMap(map['thumbnail']),
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MarvelCharacterInfoDto.fromJson(String source) =>
      MarvelCharacterInfoDto.fromMap(json.decode(source));
}
