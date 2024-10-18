import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:mobx/mobx.dart';

part 'character_details_store.g.dart';

class CharacterDetailsStore = _CharacterDetailsStore
    with _$CharacterDetailsStore;

abstract class _CharacterDetailsStore with Store {
  final CharacterDetails fetchCharacterById;
  final EpisodeDetails episodeDetails;

  _CharacterDetailsStore({
    required this.fetchCharacterById,
    required this.episodeDetails,
  });

  @observable
  CharacterModel? character;

  @observable
  ObservableList<EpisodeModel>? episodes = ObservableList<EpisodeModel>();

  @observable
  bool isLoading = false;

  @observable
  String? errorMessage;

  @action
  Future<void> loadCharacterDetails(int id) async {
    isLoading = true;
    errorMessage = null;

    try {
      final List<int> episodeIds = <int>[];
      character = await fetchCharacterById.execute(id);
      if (character?.episode == null) {
        return;
      }
      for (final String url in character!.episode!) {
        final String id = url.split('/').last;
        final EpisodeModel episode = await episodeDetails.execute(id);
        episodes?.add(episode);
      }
    } catch (error) {
      errorMessage = 'Failed to load character details';
    } finally {
      isLoading = false;
    }
  }
}
