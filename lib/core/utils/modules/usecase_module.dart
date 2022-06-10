import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/core/utils/remote_data_source/domain/usecases/main_base_get.dart';
import 'package:path_project/feature/marvel/domain/usecases/fetch_marvel_character_detail_usecase.dart';
import 'package:path_project/feature/marvel/domain/usecases/fetch_marvel_characters_usecase.dart';

Future<void> usecaseModule() async {
  mainBaseGetUsecase = Provider.autoDispose((ref) => MainBaseGet(ref));
  fetchMarvelCharactersUsecaseModule =
      Provider.autoDispose((ref) => FetchMarvelCharactersUsecase(ref));
  fetchMarvelCharacterDetailUsecaseModule =
      Provider.autoDispose((ref) => FetchMarvelCharacterDetailUsecase(ref));
}

late final AutoDisposeProvider<MainBaseGet> mainBaseGetUsecase;
late final AutoDisposeProvider<FetchMarvelCharactersUsecase>
    fetchMarvelCharactersUsecaseModule;
late final AutoDisposeProvider<FetchMarvelCharacterDetailUsecase>
    fetchMarvelCharacterDetailUsecaseModule;
