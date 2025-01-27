import 'package:basic_setups/common/route/path_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../home.dart';

final loginNavigatorKey = GlobalKey<NavigatorState>();

final homeRoute = GoRoute(
  path: AppRoutes.home.value,
  name: AppRoutes.home.name,
  redirect: (context, state) {
    // write redirection logic here
    return null;
  },
  builder: (context, state) {
    return Home();
  },
);
