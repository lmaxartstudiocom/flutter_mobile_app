import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/top_stories/data/app_repository.dart';
import '../network/dio/dio.dart';
import '../network/rest_client/rest_client.dart';

void addInjection() {
  GetIt.instance.registerSingleton(initDioClient());
  GetIt.instance.registerSingleton<RestClient>(RestClient(GetIt.instance.get<Dio>()));
  GetIt.instance.registerSingleton<AppRepository>(AppRepository(restClient: GetIt.instance.get<RestClient>()));
}
