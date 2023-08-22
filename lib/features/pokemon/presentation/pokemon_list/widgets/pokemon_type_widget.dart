import 'package:aib_test/core/utils/string_extension.dart';
import 'package:flutter/material.dart';

class PokemonTypeWidget extends StatelessWidget {
  final String type;
  const PokemonTypeWidget({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: colorForPokemonTypeWidget(type),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          type.capitalize(),
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }
}

Color colorForPokemonTypeWidget(String type) {
  switch (type) {
    case 'grass':
      return const Color.fromRGBO(140, 197, 96, 1);

    case 'poison':
      return const Color.fromRGBO(147, 72, 155, 1);

    case 'electric':
      return const Color.fromRGBO(241, 208, 84, 1);

    case 'dark':
      return const Color.fromRGBO(108, 89, 74, 1);

    case 'psychic':
      return const Color.fromRGBO(229, 99, 136, 1);

    case 'bug':
      return const Color.fromRGBO(171, 182, 65, 1);

    case 'fairy':
      return const Color.fromRGBO(225, 157, 172, 1);
    case 'rock':
      return const Color.fromRGBO(180, 160, 75, 1);

    case 'ground':
      return const Color.fromRGBO(219, 192, 117, 1);

    case 'ghost':
      return const Color.fromRGBO(108, 90, 148, 1);

    case 'fire':
      return const Color.fromRGBO(224, 133, 68, 1);

    case 'fighting':
      return const Color.fromRGBO(176, 61, 49, 1);

    case 'water':
      return const Color.fromRGBO(113, 144, 233, 1);

    case 'flying':
      return const Color.fromRGBO(164, 146, 234, 1);

    case 'ice':
      return const Color.fromRGBO(167, 214, 215, 1);

    case 'dragon':
      return const Color.fromRGBO(105, 64, 239, 1);

    case 'normal':
      return const Color.fromRGBO(168, 168, 125, 1);

    default:
      return Colors.black;
  }
}
