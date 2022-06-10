import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_project/core/utils/network_manager.dart';
import 'package:path_project/core/utils/remote_data_source/data/repo/main_request_impl.dart';
import 'package:path_project/core/utils/remote_data_source/domain/repo/base_request_repository.dart';

Future<void> serviceModule() async {
  mainRequestModule =
      Provider((ref) => MainRequestImpl(NetworkManager.getDio()));
}

late final Provider<BaseRequestRepository> mainRequestModule;
