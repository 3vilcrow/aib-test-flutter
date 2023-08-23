import 'package:aib_test/features/pokemon/domain/model/sprites/sprites.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokemonListSpritesWidget extends StatelessWidget {
  final Sprites? sprites;
  const PokemonListSpritesWidget({super.key, this.sprites});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 40,
          width: 80,
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
            imageUrl: sprites?.frontShiny ?? '',
          ),
        ),
        SizedBox(
          height: 40,
          width: 80,
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
            imageUrl: sprites?.frontDefault ?? '',
          ),
        ),
        SizedBox(
          height: 40,
          width: 80,
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
            imageUrl: sprites?.backShiny ?? '',
          ),
        ),
        SizedBox(
          height: 40,
          width: 80,
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
            imageUrl: sprites?.backDefault ?? '',
          ),
        ),
      ],
    );
  }
}