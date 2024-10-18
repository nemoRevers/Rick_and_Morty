import 'package:domain/domain.dart';

import '../../data.dart';
import '../models/models.dart';

class EpisodeRepositoryImpl implements EpisodeRepository {
  final ApiProvider _apiProvider;

  const EpisodeRepositoryImpl(ApiProvider apiProvider)
      : _apiProvider = apiProvider;

  @override
  Future<EpisodeModel> getEpisodeDetails(String id) {
    return _apiProvider.episodeDetails(id);
  }
}
