import '../../domain.dart';
import 'use_case.dart';

class FetchCharacters implements FutureUseCase<int, CharactersModel> {
  final CharacterRepository _characterRepository;

  const FetchCharacters(CharacterRepository characterRepository)
      : _characterRepository = characterRepository;

  @override
  Future<CharactersModel> execute(int page) {
    final Future<CharactersModel> charactersModel =
        _characterRepository.fetchCharacters(page);
    return charactersModel;
  }
}
