import '../../domain.dart';

abstract class CharacterRepository {
  ///TODO: CHANGE TO ENTITIES
  Future<CharactersModel> fetchCharacters([int page = 1]);
  Future<CharacterModel> characterDetails(int id);
}
