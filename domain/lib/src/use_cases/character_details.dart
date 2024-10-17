import '../../domain.dart';
import 'use_case.dart';

class CharacterDetails implements FutureUseCase<int, CharacterModel> {
  final CharacterRepository _characterRepository;

  const CharacterDetails(CharacterRepository characterRepository)
      : _characterRepository = characterRepository;

  @override
  Future<CharacterModel> execute(int id) {
    final Future<CharacterModel> model =
        _characterRepository.characterDetails(id);
    return model;
  }
}
