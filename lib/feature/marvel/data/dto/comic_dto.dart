import 'dart:convert';

import 'package:path_project/feature/marvel/data/dto/item_dto.dart';

class ComicDto {
  final int available;

  final List<ItemDto> items;

  ComicDto({required this.available, required this.items});

  Map<String, dynamic> toMap() {
    return {
      'available': available,
      'items': items.map((x) => x.toMap()).toList(),
    };
  }

  factory ComicDto.fromMap(Map<String, dynamic> map) {
    return ComicDto(
      available: map['available']?.toInt() ?? 0,
      items: List<ItemDto>.from(map['items']?.map((x) => ItemDto.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ComicDto.fromJson(String source) =>
      ComicDto.fromMap(json.decode(source));
}
