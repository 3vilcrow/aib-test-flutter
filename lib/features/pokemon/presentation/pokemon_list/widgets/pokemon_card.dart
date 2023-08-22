import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:aib_test/core/routing/app_router.dart';
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
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: CachedNetworkImage(
                  placeholder: (context, url) {
                    return const Padding(
                      padding: EdgeInsets.all(10.0),
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
                  imageUrl:
                      pokemon?.sprites?.image?.pokemonImageHome?.frontDefault ??
                          '',
                ),
              ),
              Text(pokemon?.name ?? 'N/A'),
            ],
          ),
        ),
      ),
    );
  }
}
