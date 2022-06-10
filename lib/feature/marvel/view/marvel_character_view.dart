import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/core/constant/route.dart';
import 'package:path_project/core/failure/failure.dart';
import 'package:path_project/core/route_manager/route_manager.dart';
import 'package:path_project/core/utils/modules/view_model_module.dart';
import 'package:path_project/feature/marvel/data/dto/marvel_characters_info_dto.dart';
import 'package:path_project/feature/marvel/viewmodel/marvel_state.dart';
import 'package:path_project/feature/marvel/viewmodel/marvel_view_model.dart';

class MarvelCharacterPage extends ConsumerStatefulWidget {
  const MarvelCharacterPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MarvelCharacterPageState();
}

class _MarvelCharacterPageState extends ConsumerState<MarvelCharacterPage> {
  @override
  void initState() {
    super.initState();
    ref.read(marvelViewModel).fetchMarvelCharacters();
  }

  @override
  Widget build(BuildContext context) {
    MarvelViewModel _ = ref.read(marvelViewModel);

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () {
            ref.read(offsetState.notifier).update((state) => 0);
            return ref.read(marvelViewModel).fetchMarvelCharacters();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ref.watch(marvelCharactersState).when(
                    error: (Failure error) =>
                        Center(child: Text(error.toString())),
                    idle: () => const Center(
                        child: CircularProgressIndicator.adaptive()),
                    loading: () => const Center(
                        child: CircularProgressIndicator.adaptive()),
                    success: (MarvelCharactersInfoDto data) => Expanded(
                      child: ListView.builder(
                        controller: ref.watch(scrollController),
                        itemBuilder: (context, index) {
                          if (data.marvelCharacterInfo.length == index) {
                            return const CircularProgressIndicator.adaptive();
                          } else {
                            return GestureDetector(
                              onTap: () {
                                ref
                                    .read(marvelViewModel)
                                    .fetchMarvelCharacterDetail(
                                        id: data.marvelCharacterInfo[index].id);
                                Go.to.page(marvelCharacterDetailPage);
                              },
                              child: ListTile(
                                title:
                                    Text(data.marvelCharacterInfo[index].name),
                                trailing: data
                                    .marvelCharacterInfo[index].thumbnail
                                    .getImage(),
                              ),
                            );
                          }
                        },
                        itemCount: data.marvelCharacterInfo.length + 1,
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
