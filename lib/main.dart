import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/core/keys/global_key.dart';
import 'package:path_project/core/utils/modules/repository_module.dart';
import 'package:path_project/core/utils/modules/usecase_module.dart';
import 'package:path_project/core/utils/modules/view_model_module.dart';
import 'package:path_project/core/utils/router.dart' as router;
import 'package:path_project/feature/marvel/view/marvel_character_view.dart';

void main() async {
  await Future.wait([
    usecaseModule(),
    repositoryModule(),
    viewModelModule(),
  ]);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: router.generateRoute,
      navigatorKey: GlobalContextKey.instance.globalKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MarvelCharacterPage(),
    );
  }
}
