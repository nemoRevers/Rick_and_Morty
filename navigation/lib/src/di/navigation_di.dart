import 'package:core/core.dart';

import '../app_router/app_router.dart';

abstract class NavigationDI {
  static void initDependencies(GetIt locator) {
    final AppRouter appRouter = AppRouter();
    locator.registerSingleton(appRouter);
  }
}
