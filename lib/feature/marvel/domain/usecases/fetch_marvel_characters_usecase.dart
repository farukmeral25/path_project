import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:path_project/core/usecase/i_usecase.dart';
import 'package:path_project/core/utils/modules/repository_module.dart';
import 'package:path_project/feature/marvel/data/dto/marvel_characters_info_dto.dart';
import 'package:path_project/feature/marvel/domain/repository/i_marvel_repository.dart';

class FetchMarvelCharactersUsecase
    implements IUsecase<MarvelCharactersInfoDto, int?> {
  late final IMarvelRepository marvelRepository;

  FetchMarvelCharactersUsecase(Ref ref)
      : marvelRepository = ref.read(marvelRepositoryModule);

  @override
  Future<Either<Failure, MarvelCharactersInfoDto>> call(int? offset) async {
    return await marvelRepository.fetchMarvelCharacters(offset: offset);
  }
}
