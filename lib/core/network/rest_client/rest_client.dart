import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../features/top_stories/data/models/top_stories_model.dart';

part 'rest_client.g.dart';

//
// #ThGs@n54cH$.7K
// Идентификатор приложения
// e249b4df-a44a-48b0-a154-6e16a7117557
// Key
// M9lLdOy4nNSMqrkgn3UAbirIQiAIxUGr
// Secret
// WvBmwqKBzDrK51OA


@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET('/{section}.json?api-key=M9lLdOy4nNSMqrkgn3UAbirIQiAIxUGr')
  Future<TopStoriesModel> getTopStories(
      @Path() String section,
      );
}