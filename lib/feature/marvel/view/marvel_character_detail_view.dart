import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/core/failure/failure.dart';
import 'package:path_project/core/route_manager/route_manager.dart';
import 'package:path_project/core/utils/modules/view_model_module.dart';
import 'package:path_project/feature/marvel/data/dto/marvel_character_info_dto.dart';
import 'package:path_project/feature/marvel/viewmodel/marvel_state.dart';

class MarvelCharacterDetailPage extends ConsumerWidget {
  const MarvelCharacterDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(marvelCharacterState).when(
            error: (Failure error) => Text(error.toString()),
            idle: () => const Text("Henüz request atılmamış"),
            loading: () => const CircularProgressIndicator.adaptive(),
            success: (MarvelCharacterInfoDto marvelCharacterInfoDto) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: Go.to.back,
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    marvelCharacterInfoDto.thumbnail.getImage(),
                  ],
                ),
                Text(marvelCharacterInfoDto.name),
                Text(marvelCharacterInfoDto.description ?? ""),
                const Text('Yer Aldığı Çizgi Romanlar'),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    itemBuilder: (context, index) => ref
                                .read(marvelViewModel)
                                .getYear(marvelCharacterInfoDto
                                    .comics.items[index].name) >
                            2005
                        ? ListTile(
                            title: Text(marvelCharacterInfoDto
                                .comics.items[index].name),
                          )
                        : const SizedBox.shrink(),
                    itemCount: marvelCharacterInfoDto.comics.items.length,
                  ),
                )
              ],
            ),
          ),
    );
  }
}
