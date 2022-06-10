import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:path_project/core/usecase/i_usecase.dart';
import 'package:path_project/core/utils/modules/repository_module.dart';
import 'package:path_project/feature/marvel/data/dto/marvel_character_info_dto.dart';
import 'package:path_project/feature/marvel/domain/repository/i_marvel_repository.dart';

class FetchMarvelCharacterDetailUsecase
    implements IUsecase<MarvelCharacterInfoDto, int?> {
  late final IMarvelRepository marvelRepository;

  FetchMarvelCharacterDetailUsecase(Ref ref)
      : marvelRepository = ref.read(marvelRepositoryModule);

  @override
  Future<Either<Failure, MarvelCharacterInfoDto>> call(int? id) async {
    return await marvelRepository.fetchMarvelCharacterDetail(id: id);
  }
}
