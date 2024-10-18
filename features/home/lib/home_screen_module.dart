import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import 'src/screens/details_screen.dart';
import 'src/screens/home_screen.dart';

part 'home_screen_module.gm.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen|Page,Route')
class HomeScreenModule extends _$HomeScreenModule {}
