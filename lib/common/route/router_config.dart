import 'package:basic_setups/common/route/home/home_route.dart';
import 'package:basic_setups/common/route/path_constants.dart';
import 'package:basic_setups/utils/constants/navigator_key.dart';
import 'package:go_router/go_router.dart';

GoRouter goRouterConfiguration = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: AppRoutes.home.value,
  routes: [homeRoute],
);
