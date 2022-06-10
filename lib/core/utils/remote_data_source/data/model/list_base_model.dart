import 'dart:convert';

class ItemBaseModel<T> {
  ItemBaseModel({
    required this.data,
    required this.code,
  });

  final T data;
  final int code;

  factory ItemBaseModel.fromJson(
          String str, Function(Map<String, dynamic>)? mappingFunction) =>
      ItemBaseModel.fromMap(json.decode(str), mappingFunction);

  factory ItemBaseModel.fromMap(Map<String, dynamic> json,
      Function(Map<String, dynamic>)? mappingFunction) {
    try {
      if (json["data"] != null) {
        ItemBaseModel<T> model = ItemBaseModel<T>(
          data: mappingFunction != null
              ? mappingFunction(json["data"])
              : json["data"],
          code: json["code"],
        );

        return model;
      } else {
        throw Exception();
      }
    } catch (e) {
      rethrow;
    }
  }
}
