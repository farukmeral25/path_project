import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/feature/marvel/data/repository/marvel_repository.dart';
import 'package:path_project/feature/marvel/domain/repository/i_marvel_repository.dart';

Future<void> repositoryModule() async {
  marvelRepositoryModule = Provider((ref) => MarvelRepository(ref));
}

late final Provider<IMarvelRepository> marvelRepositoryModule;
