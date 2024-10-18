import 'package:data/data.dart';

abstract class EpisodeRepository {
  Future<EpisodeModel> getEpisodeDetails(String id);
}
