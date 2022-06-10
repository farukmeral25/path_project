import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/core/utils/network_manager.dart';
import 'package:path_project/core/utils/remote_data_source/data/repo/main_request_impl.dart';
import 'package:path_project/core/utils/remote_data_source/domain/repo/_repo_exports.dart';
import 'package:path_project/feature/marvel/data/repository/marvel_repository.dart';
import 'package:path_project/feature/marvel/domain/repository/i_marvel_repository.dart';

Future<void> repositoryModule() async {
  marvelRepositoryModule = Provider((ref) => MarvelRepository(ref));
  mainRequestModule =
      Provider((ref) => MainRequestImpl(NetworkManager.getDio()));
}

late final Provider<IMarvelRepository> marvelRepositoryModule;
late final Provider<BaseRequestRepository> mainRequestModule;
