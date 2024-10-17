import '../../domain.dart';

abstract class EpisodeRepository {
  Future<EpisodeModel> getEpisodeDetails(String id);
}
