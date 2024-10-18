import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:mobx/mobx.dart';

part 'characters_store.g.dart'; // Для генерации

class CharactersStore = _CharactersStore with _$CharactersStore;

abstract class _CharactersStore with Store {
  final FetchCharacters fetchCharacters;

  _CharactersStore(this.fetchCharacters);

  @observable
  ObservableList<CharacterModel> characters = ObservableList<CharacterModel>();

  @observable
  bool isLoading = false;

  @observable
  int currentPage = 1;

  @observable
  bool hasMore = true;

  @action
  Future<void> loadCharacters() async {
    if (isLoading || !hasMore) return;

    isLoading = true;

    try {
      final CharactersModel response =
          await fetchCharacters.execute(currentPage);
      if (response.results != null &&
          response.results!.isNotEmpty &&
          response.info!.count != currentPage) {
        characters.addAll(response.results!);
        currentPage++;
      } else {
        hasMore = false;
      }
    } catch (error) {
      // Обработка ошибок
    } finally {
      isLoading = false;
    }
  }
}
