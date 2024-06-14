// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_stories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopStoriesModel _$TopStoriesModelFromJson(Map<String, dynamic> json) =>
    TopStoriesModel(
      status: json['status'] as String,
      copyright: json['copyright'] as String,
      section: json['section'] as String,
      lastUpdated: json['last_updated'] as String,
      numResults: (json['num_results'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopStoriesModelToJson(TopStoriesModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'copyright': instance.copyright,
      'section': instance.section,
      'last_updated': instance.lastUpdated,
      'num_results': instance.numResults,
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
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
      desFacet:
          (json['des_facet'] as List<dynamic>).map((e) => e as String).toList(),
      orgFacet:
          (json['org_facet'] as List<dynamic>).map((e) => e as String).toList(),
      perFacet:
          (json['per_facet'] as List<dynamic>).map((e) => e as String).toList(),
      geoFacet:
          (json['geo_facet'] as List<dynamic>).map((e) => e as String).toList(),
      multimedia: (json['multimedia'] as List<dynamic>?)
          ?.map((e) => Multimedia.fromJson(e as Map<String, dynamic>))
          .toList(),
      shortUrl: json['short_url'] as String,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
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
      'des_facet': instance.desFacet,
      'org_facet': instance.orgFacet,
      'per_facet': instance.perFacet,
      'geo_facet': instance.geoFacet,
      'multimedia': instance.multimedia,
      'short_url': instance.shortUrl,
    };

Multimedia _$MultimediaFromJson(Map<String, dynamic> json) => Multimedia(
      url: json['url'] as String,
      format: json['format'] as String,
      height: (json['height'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      type: json['type'] as String,
      subtype: json['subtype'] as String,
      caption: json['caption'] as String,
      copyright: json['copyright'] as String,
    );

Map<String, dynamic> _$MultimediaToJson(Multimedia instance) =>
    <String, dynamic>{
      'url': instance.url,
      'format': instance.format,
      'height': instance.height,
      'width': instance.width,
      'type': instance.type,
      'subtype': instance.subtype,
      'caption': instance.caption,
      'copyright': instance.copyright,
    };
