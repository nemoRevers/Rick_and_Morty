import '../info/info_entity.dart';

class CharactersEntity {
  final InfoEntity? info;
  final List<CharactersEntity>? results;

  const CharactersEntity({
    required this.info,
    required this.results,
  });
}
