// ignore_for_file: constant_identifier_names

enum DomainResourceEnum {
  marvel,
}

extension DomainResourceEnumExtension on DomainResourceEnum {
  String getUrlByState() {
    switch (this) {
      case DomainResourceEnum.marvel:
        return "https://gateway.marvel.com:443/";
    }
  }
}
