import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path_project/core/utils/modules/repository_module.dart';
import 'package:path_project/core/utils/modules/service_module.dart';
import 'package:path_project/core/utils/modules/usecase_module.dart';
import 'package:path_project/core/utils/network_manager.dart';
import 'package:path_project/core/utils/remote_data_source/data/repo/main_request_impl.dart';
import 'package:path_project/feature/marvel/domain/usecases/fetch_marvel_character_detail_usecase.dart';
import 'package:path_project/feature/marvel/domain/usecases/fetch_marvel_characters_usecase.dart';

Future<void> main() async {
  late ProviderContainer container;
  late FetchMarvelCharactersUsecase fetchMarvelCharactersUsecase;
  late FetchMarvelCharacterDetailUsecase fetchMarvelCharacterDetailUsecase;

  WidgetsFlutterBinding.ensureInitialized();

  setUpAll(
    () async {
      await Future.wait([
        serviceModule(),
        repositoryModule(),
        usecaseModule(),
      ]);

      container = ProviderContainer(
        overrides: [
          mainRequestModule.overrideWithValue(
            MainRequestImpl(
              NetworkManager.getDio(),
            ),
          ),
        ],
      );

      fetchMarvelCharactersUsecase =
          container.read(fetchMarvelCharactersUsecaseModule);
      fetchMarvelCharacterDetailUsecase =
          container.read(fetchMarvelCharacterDetailUsecaseModule);
    },
  );

  group(
    'Marvel Usecase Test',
    () {
      test('Marvel Fetch Characters Usecase Test', () async {
        try {
          final data = await fetchMarvelCharactersUsecase(0);
          final result = data is Right;
          expect(result, true);
        } catch (exception) {
          rethrow;
        }
      });

      test('Marvel Fetch Character Detail Usecase Test', () async {
        try {
          final data = await fetchMarvelCharacterDetailUsecase(1009144);
          final result = data is Right;
          expect(result, true);
        } catch (exception) {
          rethrow;
        }
      });
    },
  );
}
