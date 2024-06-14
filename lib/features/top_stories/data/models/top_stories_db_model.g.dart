// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_stories_db_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopStoriesDB _$TopStoriesDBFromJson(Map<String, dynamic> json) => TopStoriesDB(
      status: json['status'] as String,
      copyright: json['copyright'] as String,
      section: json['section'] as String,
      lastUpdated: json['last_updated'] as String,
      numResults: (json['num_results'] as num).toInt(),
    );

Map<String, dynamic> _$TopStoriesDBToJson(TopStoriesDB instance) =>
    <String, dynamic>{
      'status': instance.status,
      'copyright': instance.copyright,
      'section': instance.section,
      'last_updated': instance.lastUpdated,
      'num_results': instance.numResults,
    };

ResultDB _$ResultDBFromJson(Map<String, dynamic> json) => ResultDB(
      topSection: json['topSection'] as String,
      section: json['section'] as String,
      subsection: json['subsection'] as String,
      title: json['title'] as String,
      resultAbstract: json['abstract'] as String,
      url: json['url'] as String,
      uri: json['uri'] as String,
      byline: json['byline'] as String,
      itemType: json['item_type'] as String,
      updatedDate: DateTime.parse(json['updated_date'] as String),
      createdDate: DateTime.parse(json['created_date'] as String),
      publishedDate: DateTime.parse(json['published_date'] as String),
      materialTypeFacet: json['material_type_facet'] as String,
      kicker: json['kicker'] as String,
      shortUrl: json['short_url'] as String,
    );

Map<String, dynamic> _$ResultDBToJson(ResultDB instance) => <String, dynamic>{
      'topSection': instance.topSection,
      'section': instance.section,
      'subsection': instance.subsection,
      'title': instance.title,
      'abstract': instance.resultAbstract,
      'url': instance.url,
      'uri': instance.uri,
      'byline': instance.byline,
      'item_type': instance.itemType,
      'updated_date': instance.updatedDate.toIso8601String(),
      'created_date': instance.createdDate.toIso8601String(),
      'published_date': instance.publishedDate.toIso8601String(),
      'material_type_facet': instance.materialTypeFacet,
      'kicker': instance.kicker,
      'short_url': instance.shortUrl,
    };

MultimediaDB _$MultimediaDBFromJson(Map<String, dynamic> json) => MultimediaDB(
      uri: json['uri'] as String,
      topSection: json['topSection'] as String,
      url: json['url'] as String,
      format: json['format'] as String,
      height: (json['height'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      type: json['type'] as String,
      subtype: json['subtype'] as String,
      caption: json['caption'] as String,
      copyright: json['copyright'] as String,
    );

Map<String, dynamic> _$MultimediaDBToJson(MultimediaDB instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'topSection': instance.topSection,
      'url': instance.url,
      'format': instance.format,
      'height': instance.height,
      'width': instance.width,
      'type': instance.type,
      'subtype': instance.subtype,
      'caption': instance.caption,
      'copyright': instance.copyright,
    };
