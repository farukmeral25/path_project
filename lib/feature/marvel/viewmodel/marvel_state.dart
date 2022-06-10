import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/core/failure/failure.dart';
import 'package:path_project/core/utils/ui_state/ui_state.dart';
import 'package:path_project/feature/marvel/data/dto/marvel_character_info_dto.dart';
import 'package:path_project/feature/marvel/data/dto/marvel_characters_info_dto.dart';

final scrollController =
    StateProvider<ScrollController>((_) => ScrollController());

final offsetState = StateProvider<int>((_) => 0);

final marvelCharactersState =
    StateProvider<UIState<Failure, MarvelCharactersInfoDto>>(
        (_) => const UIState.idle());

final marvelCharacterState =
    StateProvider<UIState<Failure, MarvelCharacterInfoDto>>(
        (_) => const UIState.idle());
