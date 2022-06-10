import 'package:dartz/dartz.dart';
import 'package:path_project/core/failure/failure.dart';
import 'package:path_project/feature/marvel/data/dto/marvel_character_info_dto.dart';
import 'package:path_project/feature/marvel/data/dto/marvel_characters_info_dto.dart';

abstract class IMarvelRepository {
  Future<Either<Failure, MarvelCharactersInfoDto>> fetchMarvelCharacters(
      {int? offset});
  Future<Either<Failure, MarvelCharacterInfoDto>> fetchMarvelCharacterDetail(
      {int? id});
}
