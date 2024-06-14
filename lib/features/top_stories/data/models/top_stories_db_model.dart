
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_stories_db_model.g.dart';

@JsonSerializable()
class TopStoriesDB {
  @JsonKey(name: "status")
  String status;
  @JsonKey(name: "copyright")
  String copyright;
  @JsonKey(name: "section")
  String section;
  @JsonKey(name: "last_updated")
  String lastUpdated;
  @JsonKey(name: "num_results")
  int numResults;

  TopStoriesDB({
    required this.status,
    required this.copyright,
    required this.section,
    required this.lastUpdated,
    required this.numResults,
  });

  factory TopStoriesDB.fromJson(Map<String, dynamic> json) => _$TopStoriesDBFromJson(json);

  Map<String, dynamic> toJson() => _$TopStoriesDBToJson(this);
}

@JsonSerializable()
class ResultDB {
  @JsonKey(name: "topSection")
  String topSection;
  @JsonKey(name: "section")
  String section;
  @JsonKey(name: "subsection")
  String subsection;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "abstract")
  String resultAbstract;
  @JsonKey(name: "url")
  String url;
  @JsonKey(name: "uri")
  String uri;
  @JsonKey(name: "byline")
  String byline;
  @JsonKey(name: "item_type")
  String itemType;
  @JsonKey(name: "updated_date")
  DateTime updatedDate;
  @JsonKey(name: "created_date")
  DateTime createdDate;
  @JsonKey(name: "published_date")
  DateTime publishedDate;
  @JsonKey(name: "material_type_facet")
  String materialTypeFacet;
  @JsonKey(name: "kicker")
  String kicker;
  @JsonKey(name: "short_url")
  String shortUrl;

  ResultDB({
    required this.topSection,
    required this.section,
    required this.subsection,
    required this.title,
    required this.resultAbstract,
    required this.url,
    required this.uri,
    required this.byline,
    required this.itemType,
    required this.updatedDate,
    required this.createdDate,
    required this.publishedDate,
    required this.materialTypeFacet,
    required this.kicker,
    required this.shortUrl,
  });

  factory ResultDB.fromJson(Map<String, dynamic> json) => _$ResultDBFromJson(json);

  Map<String, dynamic> toJson() => _$ResultDBToJson(this);
}

@JsonSerializable()
class MultimediaDB {
  @JsonKey(name: "uri")
  String uri;
  @JsonKey(name: "topSection")
  String topSection;
  @JsonKey(name: "url")
  String url;
  @JsonKey(name: "format")
  String format;
  @JsonKey(name: "height")
  int height;
  @JsonKey(name: "width")
  int width;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "subtype")
  String subtype;
  @JsonKey(name: "caption")
  String caption;
  @JsonKey(name: "copyright")
  String copyright;

  MultimediaDB({
    required this.uri,
    required this.topSection,
    required this.url,
    required this.format,
    required this.height,
    required this.width,
    required this.type,
    required this.subtype,
    required this.caption,
    required this.copyright,
  });

  factory MultimediaDB.fromJson(Map<String, dynamic> json) => _$MultimediaDBFromJson(json);

  Map<String, dynamic> toJson() => _$MultimediaDBToJson(this);
}


class ResultView {
  final ResultDB result;
  final List<MultimediaDB> multimedia;
  ResultView({required this.result, required this.multimedia});
}
