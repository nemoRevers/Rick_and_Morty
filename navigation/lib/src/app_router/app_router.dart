import 'package:home_screen/home_screen.dart';

import '../../navigation.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  modules: <Type>[
    HomeScreenModule,
  ],
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: CharacterDetailsRoute.page,
        ),
      ];
}
