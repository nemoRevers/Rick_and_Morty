import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain.dart';

part 'characters_model.freezed.dart';
part 'characters_model.g.dart';

@freezed
class CharactersModel with _$CharactersModel {
  const factory CharactersModel({
    required InfoModel? info,
    required List<CharacterModel>? results,
  }) = _CharactersModel;

  factory CharactersModel.fromJson(Map<String, dynamic> json) =>
      _$CharactersModelFromJson(json);
}
