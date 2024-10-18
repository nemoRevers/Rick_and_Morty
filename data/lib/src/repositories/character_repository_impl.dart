import 'package:domain/domain.dart';

import '../../data.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final ApiProvider _apiProvider;

  const CharacterRepositoryImpl(ApiProvider apiProvider)
      : _apiProvider = apiProvider;

  @override
  Future<CharacterModel> characterDetails(int id) async {
    final CharacterModel model = await _apiProvider.characterDetails(id);
    return model;
  }

  @override
  Future<CharactersModel> fetchCharacters([int page = 1]) async {
    final CharactersModel models = await _apiProvider.fetchCharacters(page);
    return models;
  }
}
