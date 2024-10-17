import 'package:core/core.dart';

import '../../domain.dart';

abstract class DomainDI {
  static void initDependencies(GetIt locator) {
    _initUseCases(locator);
  }

  static void _initUseCases(GetIt locator) {
    appLocator.registerSingleton<FetchCharacters>(
      FetchCharacters(
        appLocator<CharacterRepository>(),
      ),
    );
    appLocator.registerSingleton<CharacterDetails>(
      CharacterDetails(
        appLocator<CharacterRepository>(),
      ),
    );
    appLocator.registerSingleton<EpisodeDetails>(
      EpisodeDetails(
        appLocator<EpisodeRepository>(),
      ),
    );
  }
}
