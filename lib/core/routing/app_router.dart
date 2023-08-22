import 'package:aib_test/features/home/presentation/pages/home_page.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/pages/pokemon_details_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

enum AppRoute {
  home,
  pokemonDetails,
}

class RoutesHandler {
  static final appPages = [
    GetPage(
      name: '/${AppRoute.home.name}',
      transition: Transition.fadeIn,
      page: () => const HomePage(),
    ),
    GetPage(
      name: '/${AppRoute.pokemonDetails.name}',
      transition: Transition.fadeIn,
      page: () => const PokemonDetails(),
    ),
  ];
}
