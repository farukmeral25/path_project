import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/feature/marvel/viewmodel/marvel_view_model.dart';

Future<void> viewModelModule() async {
  marvelViewModel = Provider.autoDispose((ref) => MarvelViewModel(ref));
}

late final AutoDisposeProvider<MarvelViewModel> marvelViewModel;
