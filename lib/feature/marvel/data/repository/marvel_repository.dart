import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/core/failure/failure.dart';
import 'package:path_project/core/failure/general_failures.dart';
import 'package:path_project/core/utils/api_endpoints.dart';
import 'package:path_project/core/utils/modules/usecase_module.dart';
import 'package:path_project/core/utils/remote_data_source/data/model/list_base_model.dart';
import 'package:path_project/core/utils/remote_data_source/domain/entities/get_request_params.dart';
import 'package:path_project/feature/marvel/data/dto/marvel_character_info_dto.dart';
import 'package:path_project/feature/marvel/data/dto/marvel_characters_info_dto.dart';
import 'package:path_project/feature/marvel/domain/repository/i_marvel_repository.dart';

class MarvelRepository implements IMarvelRepository {
  final Ref ref;

  MarvelRepository(this.ref);

  @override
  Future<Either<Failure, MarvelCharactersInfoDto>> fetchMarvelCharacters(
      {int? offset}) async {
    try {
      final result = await ref.read(mainBaseGetUsecase)(
        GetRequestParams(
          endPoint: ApiEndpoint.marvelCharacter,
          query: {
            "offset": offset,
            "limit": 30,
          },
        ),
      );
      return result.fold(
        (failure) => Left(failure),
        (jsonData) {
          ItemBaseModel<MarvelCharactersInfoDto> marvelCharactersInfoDtoItem =
              ItemBaseModel<MarvelCharactersInfoDto>.fromJson(
                  jsonData, MarvelCharactersInfoDto.staticFromMap);
          MarvelCharactersInfoDto marvelCharactersInfoDto =
              marvelCharactersInfoDtoItem.data;

          return Right(marvelCharactersInfoDto);
        },
      );
    } catch (exception) {
      return Left(NotFoundFailure());
    }
  }

  @override
  Future<Either<Failure, MarvelCharacterInfoDto>> fetchMarvelCharacterDetail(
      {int? id}) async {
    try {
      final result = await ref.read(mainBaseGetUsecase)(
        GetRequestParams(
          endPoint: ApiEndpoint.marvelCharacterDetail,
          parameter: id.toString(),
        ),
      );

      return result.fold((failure) => Left(failure), (jsonData) {
        ItemBaseModel<MarvelCharactersInfoDto> marvelCharactersInfoDtoItem =
            ItemBaseModel<MarvelCharactersInfoDto>.fromJson(
                jsonData, MarvelCharactersInfoDto.staticFromMap);
        MarvelCharacterInfoDto marvelCharacterInfoDto =
            marvelCharactersInfoDtoItem.data.marvelCharacterInfo.first;

        return Right(marvelCharacterInfoDto);
      });
    } catch (exception) {
      return Left(NotFoundFailure());
    }
  }
}
