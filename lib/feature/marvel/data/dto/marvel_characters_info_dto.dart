import 'dart:convert';

import 'package:path_project/feature/marvel/data/dto/marvel_character_info_dto.dart';

class MarvelCharactersInfoDto {
  final int offset;
  final int limit;
  final int total;
  final int count;
  final List<MarvelCharacterInfoDto> marvelCharacterInfo;

  MarvelCharactersInfoDto({
    required this.offset,
    required this.limit,
    required this.total,
    required this.count,
    required this.marvelCharacterInfo,
  });

  Map<String, dynamic> toMap() {
    return {
      'offset': offset,
      'limit': limit,
      'total': total,
      'count': count,
      'results': marvelCharacterInfo.map((x) => x.toMap()).toList(),
    };
  }

  factory MarvelCharactersInfoDto.fromMap(Map<String, dynamic> map) {
    return MarvelCharactersInfoDto(
      offset: map['offset']?.toInt() ?? 0,
      limit: map['limit']?.toInt() ?? 0,
      total: map['total']?.toInt() ?? 0,
      count: map['count']?.toInt() ?? 0,
      marvelCharacterInfo: List<MarvelCharacterInfoDto>.from(
          map['results']?.map((x) => MarvelCharacterInfoDto.fromMap(x))),
    );
  }

  static MarvelCharactersInfoDto staticFromMap(Map<String, dynamic> map) {
    return MarvelCharactersInfoDto(
      offset: map['offset']?.toInt() ?? 0,
      limit: map['limit']?.toInt() ?? 0,
      total: map['total']?.toInt() ?? 0,
      count: map['count']?.toInt() ?? 0,
      marvelCharacterInfo: List<MarvelCharacterInfoDto>.from(
          map['results']?.map((x) => MarvelCharacterInfoDto.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MarvelCharactersInfoDto.fromJson(String source) =>
      MarvelCharactersInfoDto.fromMap(json.decode(source));
}
