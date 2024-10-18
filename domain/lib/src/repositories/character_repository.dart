import 'package:data/data.dart';

abstract class CharacterRepository {
  Future<CharactersModel> fetchCharacters([int page = 1]);
  Future<CharacterModel> characterDetails(int id);
}
