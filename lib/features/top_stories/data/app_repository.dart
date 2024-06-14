import '../../../core/network/rest_client/rest_client.dart';
import 'models/top_stories_model.dart';

class AppRepository {
  AppRepository({required this.restClient});

  final RestClient restClient;

  Future<TopStoriesModel> getTopStories(String section) async {
    return await restClient.getTopStories(section);
  }
}
