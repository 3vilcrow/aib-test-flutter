import 'package:aib_test/features/pokemon/presentation/pokemon_list/widgets/pokemon_type_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:aib_test/core/routing/app_router.dart';
import 'package:aib_test/core/utils/string_extension.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:go_router/go_router.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    this.pokemon,
  });

  final Pokemon? pokemon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          context.pushNamed(AppRoute.pokemonDetails.name, extra: pokemon),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: Expanded(
                  child: CachedNetworkImage(
                    placeholder: (context, url) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20,
                        ),
                        child: CircularProgressIndicator(
                          strokeWidth: 1,
                        ),
                      );
                    },
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    imageUrl: pokemon
                            ?.sprites?.image?.pokemonImageHome?.frontDefault ??
                        '',
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        pokemon?.name?.capitalize() ?? 'N/A',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '#${(pokemon?.id ?? 0).toString().padLeft(4, '0')}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(203, 203, 203, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: pokemon?.types?.types?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return PokemonTypeWidget(
                          type:
                              pokemon?.types?.types?[index].type?.name ?? 'N/A',
                        );
                      },
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
