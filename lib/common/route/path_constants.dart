// call AppRoutes.home.value to get the path of the route (/home)
// call AppRoutes.home.name to get the name of the route (home)

enum AppRoutes {
  home('/home');

  final String value;
  const AppRoutes(this.value);
}
