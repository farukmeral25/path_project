import 'package:flutter/cupertino.dart';
import 'package:path_project/core/constant/route.dart';
import 'package:path_project/feature/marvel/view/marvel_character_detail_view.dart';
import 'package:path_project/feature/marvel/view/marvel_character_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case marvelCharacterPage:
      return CupertinoPageRoute(builder: (_) => const MarvelCharacterPage());
    case marvelCharacterDetailPage:
      return CupertinoPageRoute(
          builder: (_) => const MarvelCharacterDetailPage());
    default:
      //TODO : Change Route
      return CupertinoPageRoute(builder: (_) => const MarvelCharacterPage());
  }
}
