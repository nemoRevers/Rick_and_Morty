import 'package:core/core.dart';
import 'package:domain/domain.dart';

import '../../data.dart';

abstract class DataDI {
  static void initDependencies(GetIt locator) {
    _initApi(locator);
    _initProviders(locator);
    _initRepositories(locator);
  }

  static void _initApi(GetIt locator) {
    locator.registerLazySingleton<DioConfig>(
      () => DioConfig(
        appConfig: locator<AppConfig>(),
      ),
    );

    locator.registerLazySingleton<ErrorHandler>(
      () => ErrorHandler(
        eventNotifier: locator<AppEventNotifier>(),
      ),
    );
  }

  static void _initProviders(GetIt locator) {
    appLocator.registerLazySingleton<ApiProvider>(
      () => ApiProviderImpl(
        appLocator<DioConfig>().dio,
        appLocator<ErrorHandler>(),
      ),
    );
  }

  static void _initRepositories(GetIt locator) {
    appLocator.registerLazySingleton<CharacterRepository>(
      () => CharacterRepositoryImpl(
        appLocator<ApiProvider>(),
      ),
    );
    appLocator.registerLazySingleton<EpisodeRepository>(
      () => EpisodeRepositoryImpl(
        appLocator<ApiProvider>(),
      ),
    );
  }
}
