import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart'; // Импортируйте вашу модель

part 'character_store.g.dart';

class CharactersStore = _CharactersStore with _$CharactersStore;

abstract class _CharactersStore with Store {
  final FetchCharacters fetchCharacters;

  _CharactersStore(this.fetchCharacters);

  @observable
  CharactersModel? model;

  @action
  Future<void> loadCharacters(int page) async {
    model = await fetchCharacters.execute(page);
  }
}
