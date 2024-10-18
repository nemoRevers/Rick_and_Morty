import '../models/models.dart';

abstract class ApiProvider {
  Future<CharactersModel> fetchCharacters([int page = 1]);
  Future<CharacterModel> characterDetails(int id);
  Future<EpisodeModel> episodeDetails(String id);
}
