import 'dart:convert';

class ItemDto {
  final String name;

  ItemDto({required this.name});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  factory ItemDto.fromMap(Map<String, dynamic> map) {
    return ItemDto(
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemDto.fromJson(String source) =>
      ItemDto.fromMap(json.decode(source));
}
