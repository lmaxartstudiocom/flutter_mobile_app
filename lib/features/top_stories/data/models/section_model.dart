import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_model.g.dart';

@JsonSerializable()
class SectionModel {
  @JsonKey(name: "section")
  String section;
  @JsonKey(name: "favorite")
  int favorite;
  SectionModel({required this.section, this.favorite = 0});

  factory SectionModel.fromJson(Map<String, dynamic> json) => _$SectionModelFromJson(json);

  Map<String, dynamic> toJson() => _$SectionModelToJson(this);
}