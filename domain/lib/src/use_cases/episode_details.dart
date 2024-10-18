import 'package:data/data.dart';

import '../../domain.dart';
import 'use_case.dart';

class EpisodeDetails implements FutureUseCase<String, EpisodeModel> {
  final EpisodeRepository _episodeRepository;

  const EpisodeDetails(EpisodeRepository repository)
      : _episodeRepository = repository;

  @override
  Future<EpisodeModel> execute(String id) {
    return _episodeRepository.getEpisodeDetails(id);
  }
}
