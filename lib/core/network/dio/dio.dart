import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

String backUrl = 'https://s3.dev.selloutdigital.ru:9000';

Dio initDioClient(
//  NetworkDebugCubit networkDebugCubit,
//  SecureStorageManager secureStorageManager,
) {
  final option = BaseOptions(
    baseUrl: 'https://api.nytimes.com/svc/topstories/v2',
    contentType: Headers.jsonContentType,
    headers: {
      'Accept': 'application/json',
    },
  );

  return Dio(option)
    // ..interceptors.add(NetworkDebugInterceptor(networkDebugCubit))
//    ..interceptors.add(AuthTokenInterceptor(
    ///        secureStorage: secureStorageManager, dio: Dio(option)))
//    ..interceptors.add(BackendErrorInterceptor(Dio(option)))
    ..interceptors.add(PrettyDioLogger(requestBody: true));
}
