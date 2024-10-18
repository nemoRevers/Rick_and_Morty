import 'package:freezed_annotation/freezed_annotation.dart';

part 'origin_model.freezed.dart';
part 'origin_model.g.dart';

@freezed
class OriginModel with _$OriginModel {
  const factory OriginModel({
    required String? name,
    required String? url,
  }) = _OriginModel;

  factory OriginModel.fromJson(Map<String, dynamic> json) =>
      _$OriginModelFromJson(json);
}
