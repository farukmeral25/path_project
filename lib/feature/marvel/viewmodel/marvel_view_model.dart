import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/core/failure/failure.dart';
import 'package:path_project/core/utils/modules/usecase_module.dart';
import 'package:path_project/core/utils/ui_state/ui_state.dart';
import 'package:path_project/feature/marvel/data/dto/marvel_character_info_dto.dart';
import 'package:path_project/feature/marvel/data/dto/marvel_characters_info_dto.dart';
import 'package:path_project/feature/marvel/domain/usecases/fetch_marvel_character_detail_usecase.dart';
import 'package:path_project/feature/marvel/domain/usecases/fetch_marvel_characters_usecase.dart';
import 'package:path_project/feature/marvel/viewmodel/marvel_state.dart';

class MarvelViewModel {
  final Ref ref;
  late final FetchMarvelCharactersUsecase _fetchMarvelCharactersUsecase;
  late final FetchMarvelCharacterDetailUsecase
      _fetchMarvelCharacterDetailUsecase;

  MarvelViewModel(this.ref)
      : _fetchMarvelCharactersUsecase =
            ref.read(fetchMarvelCharactersUsecaseModule),
        _fetchMarvelCharacterDetailUsecase =
            ref.read(fetchMarvelCharacterDetailUsecaseModule) {
    ref.read(scrollController).addListener(() {
      if (ref.read(scrollController).position.maxScrollExtent ==
          ref.read(scrollController).position.pixels) {
        fetchMarvelCharacters();
      }
    });
  }

  Future<void> fetchMarvelCharacters() async {
    final result = await _fetchMarvelCharactersUsecase(ref.read(offsetState));

    final UIState<Failure, MarvelCharactersInfoDto> state = result.fold(
      (failure) => UIState.error(failure),
      (data) {
        MarvelCharactersInfoDto? marvelCharactersInfoDto;
        ref.read(marvelCharactersState).maybeWhen(
            orElse: () => null,
            success: (data) => marvelCharactersInfoDto = data);
        if (ref.read(offsetState) == 0 && marvelCharactersInfoDto != null) {
          marvelCharactersInfoDto!.marvelCharacterInfo.clear();
        }
        if (marvelCharactersInfoDto != null) {
          marvelCharactersInfoDto!.marvelCharacterInfo
              .addAll(data.marvelCharacterInfo);
        }
        return UIState.success(marvelCharactersInfoDto ?? data);
      },
    );

    ref.read(marvelCharactersState.notifier).update((_) => state);
    ref.read(offsetState.notifier).update((int offset) => offset + 30);
  }

  Future<void> fetchMarvelCharacterDetail({int? id}) async {
    ref
        .read(marvelCharacterState.notifier)
        .update((_) => const UIState.loading());

    final result = await _fetchMarvelCharacterDetailUsecase(id);
    final UIState<Failure, MarvelCharacterInfoDto> state = result.fold(
      (failure) => UIState.error(failure),
      (data) => UIState.success(data),
    );

    ref.read(marvelCharacterState.notifier).update((_) => state);
  }

  int getYear(String movie) {
    try {
      String movieName = movie;
      int year = int.parse(movieName.split("(")[1].split(")").first);
      return year;
    } catch (e) {
      return 0;
    }
  }
}
