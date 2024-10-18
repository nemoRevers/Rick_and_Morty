import 'dart:async';

import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:home_screen/home_screen.dart';
import 'package:navigation/navigation.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  const String flavor = String.fromEnvironment('flavor', defaultValue: 'Prod');
  _setupDI(flavor);

  runApp(const App());
}

void _setupDI(String flavor) {
  appLocator.pushNewScope(
    scopeName: unauthScope,
    init: (_) {
      AppDI.initDependencies(
        appLocator,
        Flavor.fromString(flavor),
      );
      DataDI.initDependencies(appLocator);
      DomainDI.initDependencies(appLocator);
      NavigationDI.initDependencies(appLocator);
    },
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = appLocator<AppRouter>();

    return MultiProvider(
      providers: [
        Provider<CharactersStore>(
          create: (_) => CharactersStore(
            appLocator<FetchCharacters>(),
          ),
        ),
        Provider<CharacterDetailsStore>(
          create: (_) => CharacterDetailsStore(
            fetchCharacterById: appLocator<CharacterDetails>(),
            episodeDetails: appLocator<EpisodeDetails>(),
          ),
        ),
      ],
      child: EasyLocalization(
        path: AppLocalization.langFolderPath,
        supportedLocales: AppLocalization.supportedLocales,
        fallbackLocale: AppLocalization.fallbackLocale,
        child: Builder(
          builder: (BuildContext context) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: appRouter.config(),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              theme: lightTheme,
              builder: (
                BuildContext context,
                Widget? child,
              ) {
                return child ?? const SizedBox.shrink();
              },
            );
          },
        ),
      ),
    );
  }
}
