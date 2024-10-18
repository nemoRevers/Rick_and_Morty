import 'package:freezed_annotation/freezed_annotation.dart';

import '../character/character_model.dart';
import '../info/info_model.dart';

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
