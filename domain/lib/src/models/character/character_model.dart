import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../origin/origin_model.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    required int? id,
    required String? name,
    required String? status,
    required String? species,
    required String? type,
    required String? gender,
    required OriginModel? origin,
    required OriginModel? location,
    required String? image,
    required List<String>? episode,
    required String? url,
    required String? created,
  }) = _CharacterModel;

  const CharacterModel._();

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  String? get formattedDate {
    if (created == null) return null;
    final DateTime dateTime = DateTime.parse(created!);
    return DateFormat('dd.MM.yyyy').format(dateTime);
  }
}
