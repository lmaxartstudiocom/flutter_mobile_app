import 'dart:convert';

import 'package:flutter_mobile_app/features/top_stories/data/models/top_stories_db_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_stories_model.g.dart';

TopStoriesModel topStoriesModelFromJson(String str) => TopStoriesModel.fromJson(json.decode(str));

String topStoriesModelToJson(TopStoriesModel data) => json.encode(data.toJson());

@JsonSerializable()
class TopStoriesModel {
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
  @JsonKey(name: "results")
  List<Result> results;

  TopStoriesModel({
    required this.status,
    required this.copyright,
    required this.section,
    required this.lastUpdated,
    required this.numResults,
    required this.results,
  });

  factory TopStoriesModel.fromJson(Map<String, dynamic> json) => _$TopStoriesModelFromJson(json);

  Map<String, dynamic> toJson() => _$TopStoriesModelToJson(this);
}

@JsonSerializable()
class Result {
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
  @JsonKey(name: "des_facet")
  List<String> desFacet;
  @JsonKey(name: "org_facet")
  List<String> orgFacet;
  @JsonKey(name: "per_facet")
  List<String> perFacet;
  @JsonKey(name: "geo_facet")
  List<String> geoFacet;
  @JsonKey(name: "multimedia")
  List<Multimedia>? multimedia;
  @JsonKey(name: "short_url")
  String shortUrl;

  Result({
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
    required this.desFacet,
    required this.orgFacet,
    required this.perFacet,
    required this.geoFacet,
    required this.multimedia,
    required this.shortUrl,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable()
class Multimedia {
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

  Multimedia({
    required this.url,
    required this.format,
    required this.height,
    required this.width,
    required this.type,
    required this.subtype,
    required this.caption,
    required this.copyright,
  });

  factory Multimedia.fromJson(Map<String, dynamic> json) => _$MultimediaFromJson(json);

  Map<String, dynamic> toJson() => _$MultimediaToJson(this);
}

extension ExtensionTopStories on TopStoriesModel {
  TopStoriesDB toTopStoriesDB(String topSection) {
    return TopStoriesDB(
        status: status,
        copyright: copyright,
        section: topSection,
        lastUpdated: lastUpdated,
        numResults: numResults
    );
  }
}

extension ExtensionResult on Result {
  ResultDB toResultDB(String topSection) {
    return ResultDB(
      topSection: topSection,
      section: section,
      subsection: subsection,
      title: title,
      resultAbstract: resultAbstract,
      url: url,
      uri: uri,
      byline: byline,
      itemType: itemType,
      updatedDate: updatedDate,
      createdDate: createdDate,
      publishedDate: publishedDate,
      materialTypeFacet: materialTypeFacet,
      kicker: kicker,
      shortUrl: shortUrl,
    );
  }

  List<MultimediaDB> toMultimediaDB(String topSection) {
    List<MultimediaDB> list = [];
    if (multimedia != null) {
      for (var m in multimedia!) {
        list.add(MultimediaDB(
          uri: uri,
          topSection: topSection,
          url: m.url,
          format: m.format,
          height: m.height,
          width: m.width,
          type: m.type,
          subtype: m.subtype,
          caption: m.caption,
          copyright: m.copyright,
        ));
      }
    }
    return list;
  }
}
