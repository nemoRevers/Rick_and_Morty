import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_model.freezed.dart';
part 'episode_model.g.dart';

@freezed
class EpisodeModel with _$EpisodeModel {
  const factory EpisodeModel({
    required int? id,
    required String? name,
    required String? airDate,
  }) = _EpisodeModel;

  const EpisodeModel._();

  factory EpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeModelFromJson(json);

  String? get formattedDate {
    if (airDate == null) return null;
    final DateTime dateTime = DateTime.parse(airDate!);
    return DateFormat('dd.MM.yyyy').format(dateTime);
  }
}
