import 'package:aib_test/core/di/service_locator.dart';
import 'package:aib_test/core/utils/enums/status.dart';
import 'package:aib_test/features/pokemon/domain/repository/pokemons_repository.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/pages/arguments/pokemon_details_page_args.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/widgets/pokemon_list_sprites_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aib_test/features/pokemon/domain/model/pokemon/pokemon.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/cubit/pokemon_details_cubit.dart';
import 'package:aib_test/features/pokemon/presentation/pokemon_details/cubit/pokemon_details_state.dart';
import 'package:get/get.dart';

class PokemonDetails extends StatelessWidget {
  const PokemonDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final arg = Get.arguments is PokemonDetailsPageArgs
        ? Get.arguments as PokemonDetailsPageArgs
        : null;
    final Pokemon? pokemon = arg?.pokemon;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Detail'),
        leading: IconButton(
          splashRadius: 20,
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => PokemonDetailsCubit(
          pokemonsRepository: locator<PokemonsRepository>(),
          pokemon: pokemon,
        )..initiaize(),
        child: const PokemonDetailsContent(),
      ),
    );
  }
}

class PokemonDetailsContent extends StatelessWidget {
  const PokemonDetailsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailsCubit, PokemonDetailsState>(
      builder: (context, state) {
        switch (state.status) {
          case Status.initial:
          case Status.loading:
            return const Center(child: CircularProgressIndicator());
          case Status.loaded:
          case Status.error:
            return const Center(child: Text('Fallo al pedir los pokemons'));
          case Status.success:
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  // Center Big Image
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: CachedNetworkImage(
                      placeholder: (context, url) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(),
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                          ),
                        );
                      },
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      imageUrl: state.pokemon?.sprites?.frontShiny ?? '',
                    ),
                  ),

                  Text(
                    state.pokemon?.name?.capitalize ?? 'N/A',
                    style: const TextStyle(
                      fontSize: 32,
                      height: 1,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '#${(state.pokemon?.id ?? 0).toString().padLeft(4, '0')}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(203, 203, 203, 1),
                    ),
                  ),

                  // Sprites Images in Row
                  PokemonListSpritesWidget(sprites: state.pokemon?.sprites),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 35,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: state.pokemon?.abilities?.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (state.abilitySelected?.name ==
                            state.pokemon?.abilities?[index]?.ability?.name) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              state.pokemon?.abilities?[index]?.ability?.name
                                      ?.capitalize ??
                                  'N/A',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          );
                        } else {
                          return GestureDetector(
                            onTap: () => context
                                .read<PokemonDetailsCubit>()
                                .changeSelectedAbility(
                                  state.pokemon?.abilities?[index]?.ability,
                                ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15.0,
                              ),
                              child: Text(
                                state.pokemon?.abilities?[index]?.ability?.name
                                        ?.capitalize ??
                                    'N/A',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      state.abilitySelected
                              ?.pokemonAbilityDescriptionEffectEntries
                              ?.firstWhere(
                                (element) => element?.language?.name == 'en',
                              )
                              ?.effect ??
                          'N/A',
                    ),
                  )
                ],
              ),
            );
        }
      },
    );
  }
}
