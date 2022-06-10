import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path_project/core/utils/api_endpoints.dart';
import 'package:path_project/core/utils/modules/service_module.dart';
import 'package:path_project/core/utils/network_manager.dart';
import 'package:path_project/core/utils/remote_data_source/data/repo/main_request_impl.dart';
import 'package:path_project/core/utils/remote_data_source/domain/repo/base_request_repository.dart';

Future<void> main() async {
  late ProviderContainer container;
  late BaseRequestRepository _baseRequestRepository;

  setUpAll(
    () async {
      await serviceModule();
      container = ProviderContainer(
        overrides: [
          mainRequestModule.overrideWithValue(
            MainRequestImpl(
              NetworkManager.getDio(),
            ),
          ),
        ],
      );

      _baseRequestRepository = container.read(mainRequestModule);
    },
  );

  group('Marvel Api Service', () {
    test('Marvel Fetch Characters Api Test', () async {
      try {
        final data = await _baseRequestRepository.baseGet(
          endPoint: ApiEndpoint.marvelCharacter,
        );
        final result = data is Right;
        expect(result, true);
      } catch (exception) {
        rethrow;
      }
    });

    test('Marvel Fetch Character Detail Api Test', () async {
      try {
        final data = await _baseRequestRepository.baseGet(
          endPoint: ApiEndpoint.marvelCharacterDetail,
          query: {
            "offset": 1,
            "limit": 30,
          },
          parameter: "1009144",
        );
        final result = data is Right;
        expect(result, true);
      } catch (exception) {
        rethrow;
      }
    });
  });
}
